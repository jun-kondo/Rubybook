def insertion_sort(array)
  n = 0

  # 配列の中身すべてをループさせる(配列の番号は個数より1つ少ない)
  while n < array.length - 1
    x = array[n+1]
    k = n+1
    # 配列の隣同士の値を比較する(条件は左の値が大きい場合))
    while (k > 0) && (array[k-1] > x)
      #　左と右の値を入れ替える(右の値に左の値を代入し移動する))
      array[k] = array[k-1]
      k = k-1
    end
    # 空いた枠にxを代入
    array[k] = x
    n += 1
  end
  array
end

print insertion_sort([4, 2, 5, 1, 3])
puts [4, 2, 5, 1, 3].length