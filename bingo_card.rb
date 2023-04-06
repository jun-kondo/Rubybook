class Bingo
  def self.generate_card
    # 以下の行は削除して、自分でロジックを実装してください。
    cols = (1..75).each_slice(15).map { |sequence| sequence.sample(5)}
    cols[2][2] = ""
    cols.transpose
    print cols
  end
end
