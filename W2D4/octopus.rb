def find_longest_fish(array)
  longest = array[0]


  array.each do |fish,idx|

    array.each do |fish2,idx2|

      next if idx == idx2

      if fish.length => fish2.length
        longest = fish

      else
        longest = nil
      end
    end

    return longest if !longest.nil?
  end
end

nil

end


def dominant_fish(array)

merge_sort(array).last

end

def merge_sort(array)
  return array.first if array.length < 2

  left = array.take(array.length / 2)
  right = array.drop(array.length / 2)

  merge(merge_sort(left),merge_sort(right))

end


def merge(left,right)
  result = []
  until left.empty? || right.empty?

    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result.concat(left)
  result.concat(right)
end




def clever_octopus(array)

  longest_fish = array.first
  max = longest_fish.length
  array.shift.each do |el|
    if el.length > max
      longest_fish = el
      max = longest_fish.length
    end
  end
  longest_fish
end


def slow_dance(direction,array)

 array.each_with_index do |el,idx|
   return idx if el == direction

end


def constance_dance(direction,hash)
  hash[direction]

end
