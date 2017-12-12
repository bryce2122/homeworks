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
        if  start_pos == 13
          start_pos = 0
        else
          start_pos += 1
        end

        if current_player_name == @name1
          @cups[start_pos] << stones.shift if start_pos != 13
        else
          @cups[start_pos] << stones.shift if start_pos != 0
        end
      end
      render
      next_turn(start_pos,current_player_name)
      end

  def next_turn(ending_cup_idx,player)
    p ending_cup_idx
      return :prompt if ending_cup_idx == 6 && player == @name1
      return :prompt if ending_cup_idx == 13 && player == @name2
      @cups[ending_cup_idx].length > 1 ? ending_cup_idx : :switch
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
      return true if @cups[0..5].all? {|x| x.empty?}
      return true if @cups[7..12].all? {|x| x.empty?}
      false

  end

  def winner
    return :draw if @cups[6].count == @cups[13].count
    return @name1 if @cups[6].count > @cups[13].count
    return @name2 if @cups[13].count > @cups[6].count

  end
end
