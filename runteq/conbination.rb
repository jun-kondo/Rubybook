n = 5
array1 = (1...n).to_a
array2 = (1..n).to_a
result_array = []
array1.each do |number1|
  select_number_array = array2.select { |number2| number2 > number1}
  select_number_array.each do |select_number|
    result_array.push([number1, select_number])
  end
end

p result_array


