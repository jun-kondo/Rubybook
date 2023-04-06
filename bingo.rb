cols = (1..75).each_slice(15).map { |sequence| sequence.sample(5)}
cols[2][2] = ""
#print cols

card = ["BINGO".chars] + cols.transpose

card.map {|row|
  print row.map { |v| v.to_s.rjust(2) }.join(' | ')
}.join("\n")