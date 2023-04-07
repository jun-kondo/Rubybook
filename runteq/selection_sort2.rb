def selection_sort(array)
  size = array.length

  size.times do |i|
    min = i
    j = i + 1
    while j < array.size
      if array[j] < array[min]
        min = j
      end
      j += 1
    end

    tmp = array[i]
    array[i] = array[min]
    array[min] = tmp
  end
  array
end

print selection_sort([4, 2, 5, 1, 3])