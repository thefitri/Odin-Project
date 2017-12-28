def stock_picker price_array
  matrix = {}
  last_day = price_array.length - 1
  (0..last_day).each do |day_a|
    (day_a..last_day).each do |day_b|
      matrix[[day_a,day_b]] = price_array[day_b]- price_array[day_a]
    end
  end
  max_return = matrix.values.max
  max_return_days = matrix.select{ |days,value| value == max_return}
  return max_return_days.first[0]
end

puts "Usage:\nstock_picker([stock price array])"
