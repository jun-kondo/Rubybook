def babble_sort(array)
  size = array.length
  # (0~要素数の回数ループする))
  size.times do |i|
    # ループするごとに回数は少なくなる
    (size - (i + 1)).times do |j|
      if array[j] > array[j+1]
        tmp = array[j]
        array[j] = array[j+1]
        array[j+1] = tmp
      end
    end
  end
  array
end

print babble_sort([4, 5, 2, 1, 3])