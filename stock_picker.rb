def stock_picker prices
  matrix = {}
  last_day = prices.length - 1
  (0..last_day).each do |day_a|
    (day_a+1..last_day).each do |day_b|
      matrix[[day_a,day_b]] = prices[day_b] - prices[day_a]
    end
  end
  max_return = matrix.values.max
  max_return_days = matrix.select{|days,value| value == max_return}
  return max_return_days.first[0]
end

puts "usage:\tstock_picker([stock_prices:array])"
