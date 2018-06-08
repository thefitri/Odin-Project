def bubble_sort array
  max_index = array.length - 1
  (0..max_index).each do |key|
    (0..max_index - key).each do |index|
      if !(max_index - key == index) && (array[index] > array[index+1])
        temp = array[index]
        array[index] = array[index+1]
        array[index+1] = temp
      end
    end
  end
  return array
end

puts "Usage: bubble_sort([numbers array])"
