def fizzbuzz(array)
  array_number = array.size
  array_number.times do |n|
    if array[n] % 15 == 0
      puts "Fizzbuzz"
    elsif array[n] % 3 == 0
      puts "Fizz"
    elsif array[n] % 5 == 0
      puts "Buzz"
    else
      puts array[n]
    end
  end
end

print fizzbuzz((1..100).to_a)