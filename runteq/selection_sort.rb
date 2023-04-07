def selection_sort(array)
  n = 0

  # 配列の左端を起点+最小値にする。
  while n < array.length - 1
    min = n
    # 起点の右隣の値を比較するために添え字を設定
    k = n + 1

    while k < array.length
      # kの値がminの値より低かったらkの値をminに代入する。
      # これを繰り返すと最終的に配列の最小値がminに入る。
      if array[k] < array[min]
        min = k
      end
      # 起点の右隣から一つづつ右にずらして行く。
      k += 1
    end
    # ループし終わった時点の配列の最小値と起点の値を交換する
    # これで最終的に左端が最小値に移動する。
    tmp = array[n]
    array[n] = array[min]
    array[min] = tmp

    n += 1
  end
  array
end

print selection_sort([4, 2, 5, 1, 3])