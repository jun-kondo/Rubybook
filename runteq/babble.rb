# 配列を定義
arr = [4, 5, 2, 1, 3]
# 配列の長さを取得
size = arr.size
# 配列の最大値
max = size - 1 




# 以下2重ループとなります。
# 0〜（max - 1）までをループ（0、1、2、3）。ループ変数をiとする。ループを書いてみましょう。
  # max 〜 i + 1をループ。変数をjとする。ループを書いてみましょう。
  # (max..(i+1)).each do |j|のままではイテレートできないので、降順の書き方を調べてみよう
    # arr[j]とarr[j - 1]を比較しarr[j - 1]が大きい場合、入れ替え
(0..(max - 1)).each do |i|
  ((i+1)..max).reverse_each do |j|
    if arr[j] < arr[j-1]
      tmp = arr[j-1]
      arr[j-1] = arr[j]
      arr[j] = tmp
    end
  end
end

print arr


