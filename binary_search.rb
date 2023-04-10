def binary_search(array)
  search_number = 4
  find_id = -1

  array_number = array.length

  left = 0
  right = array_number - 1

  while left <= right
    middle = (left + right) / 2
    if array[middle] == search_number
      find_id = middle
      break
    elsif array[middle] < search_number
      left = middle + 1
    else
      right = middle - 1
    end
  end
  puts "見つかった番号= #{find_id}"
end

arr =[1, 2, 3, 4, 5]
binary_search(arr)