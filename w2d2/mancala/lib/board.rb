require 'byebug'
class Board
  attr_accessor :cups



  def initialize(name1, name2)
    @name1,@name2 = name1,name2
    @cups = Array.new(14)
    place_stones

  end

  def place_stones
    @cups.map!.with_index do |el,idx|
      if idx == 6 || idx == 13
        []
      else
        [:stone,:stone,:stone,:stone]
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !start_pos.between?(1,14)
  end

  def make_move(start_pos, current_player_name)
    start_pos
    stones,@cups[start_pos] = @cups[start_pos],[]
      until stones.empty?
        @cups[start_pos += 1] << stones.shift unless start_pos == 12 ||
        start_pos == 5
        if current_player_name == @name1 && start_pos == 12
          start_pos = 0
          @cups[start_pos] << stones.shift
        elsif current_player_name == @name1 && start_pos == 5
          cups[start_pos += 1] << stones.shift
        elsif current_player_name == @name2 && start_pos == 5
          start_pos = 6
          cups[start_pos += 1] << stones.shift
        end
      end
      render
        debugger
        a = next_turn(start_pos)
        "switch"



      end

  def next_turn(ending_cup_idx)
    return :switch
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
