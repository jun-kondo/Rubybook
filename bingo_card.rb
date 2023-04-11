def card
	#　一文字ずつ配列にする。
	bingo = ["BINGO".chars]
	numbers = (1..75).each_slice(15).map { |number| number.sample(5) }.transpose
	#　真ん中を空白にする[3番目の配列][3番目の要素]
	numbers[2][2] = "  "
	#　配列を合体
	rows = bingo + numbers
	#　配列を並べ替えてjoinメソッド改行を区切り文字にして連結する
	rows.map  { |row|
	#　配列の要素を文字列にして2文字で右寄せ(rjust(2))にしたあと
	#　"|"を区切り文字にしてjoinで連結　>　rowは配列から1つの文字列になる
		row.map { |r| r.to_s.rjust(2) }.join(" | ")
	}.join("\n")
end

#　最終的に1つの文字列を取得している。
puts card