require "date"

youbi = %w[Su Mo Tu We Th Fr Sa]

today = Date.today
month_start_day = Date.new(today.year, today.month, +1)
month_last_day = Date.new(today.year, today.month, -1)

#dateクラスのstrftimeで、本日の年%Y、月名%Bを取得して表示する
puts today.strftime("%B %Y").center(20)
puts youbi.join(" ")

space = "   " * month_start_day.wday
print space

range = month_start_day..month_last_day
range.each do |d|
  #print "#{d.day}"
  if d.saturday?
    puts d.day.to_s.rjust(2)
  else
    print d.day.to_s.rjust(2)
    print " "
  end
end