def linear_search(array)
  search_number = 2
  find_id = -1

  array_number = array.length

  array_number.times do |num|
    if array[num] == search_number
      find_id = num
      break
    end
  end
  puts "見つかった番号= #{find_id}"
end

arr = [4, 5, 2, 1, 3]
linear_search(arr)