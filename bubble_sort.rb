def bubble_sort array
  (0..array.length - 1).each do |key|
    (0..array.length - (key + 2)).each do |index|
      if (array[index] > array[index+1])
        temp = array[index]
        array[index] = array[index+1]
        array[index+1] = temp
      end
    end
  end
  return array
end

puts "Usage: bubble_sort([array])"
