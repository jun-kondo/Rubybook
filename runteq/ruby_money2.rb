money = 6498
# ここから下に解答コードを記載する
money_types = [1, 5, 10, 50, 100, 500, 1000, 5000, 10000]
array = []
money_types.reverse_each do |type|
  amount = money / type
  money = money % type
  array.push([type, amount])
end

p array.reverse.to_h