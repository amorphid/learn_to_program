def leap_year?(year)
  case
  when year%400 == 0
    true
  when year%100 == 0
    false
  when year%4 == 0
    true
  else
    false
  end
end

def all_leap_years_in_range(year_number_1, year_number_2)
  range = []

  (year_number_1..year_number_2).each do |year|
    next unless leap_year?(year)
    range << year
  end

  range
end

def app
  print "Enter Year #1:  "
  year_number_1 = gets.chomp.to_i

  print "Enter Year #2:  "
  year_number_2 = gets.chomp.to_i

  puts all_leap_years_in_range(year_number_1, year_number_2)
end
