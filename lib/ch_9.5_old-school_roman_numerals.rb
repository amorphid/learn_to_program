# The book was expecting something that used modulos.  After making using a
# case statement, I see what they mean.  This could be done in one pass.

  # def to_rom(i)
  #   roman = ""

  #   while i > 0
  #     case
  #     when i >= 1000
  #       roman << "M" * (i / 1000)
  #       i -= (i/1000) * 1000
  # #    when i >= 900
  # #      roman << "CM"
  # #      i -= 900
  #     when i >= 500
  #       roman << "D"
  #       i -= 500
  # #   when i >= 400
  # #     roman << "CD"
  # #     i -= 400
  #     when i >= 100
  #       roman << "C" * (i/100)
  #       i -= (i/100) * 100
  # #     when i >= 90
  # #      roman << "XC"
  # #      i -= 90
  #     when i >= 50
  #       roman << "L"
  #       i -= 50
  # #    when i >= 40
  # #      roman << "XL"
  # #      i -= 40
  #     when i >= 10
  #       roman << "X" * (i/10)
  #       i -= (i/10) * 10
  #     when i >= 5
  #       roman << "V"
  #       i -= 5
  # #    when i == 4
  # #      roman << "IV"
  # #      i -= 4
  #     when i >= 1
  #       roman << 1 * i
  #       i -= i
  #     end
  #   end

  #   roman
  # end

# The book was looking for something using modulo and division, but I took a
# took a different approach.  I wanted to play with an algorithm that could
# go from decimal to roman and back again.  My thinking was using a common set
# of pairs would make the program very easy to change, such as changing 4 from
# the old school format of IIII to the more recent IV.

def dec_rom_num_map
  {
    3000 => "MMM",
    2000 => "MM",
    1000 => "M",
    900  => "DCCCC",
    800  => "DCCC",
    700  => "DCC",
    600  => "DC",
    500  => "D",
    400  => "CCCC",
    300  => "CCC",
    200  => "CC",
    100  => "C",
    90   => "LXXXX",
    80   => "LXXX",
    70   => "LXX",
    60   => "LX",
    50   => "L",
    40   => "XXXX",
    30   => "XXX",
    20   => "XX",
    10   => "X",
    9    => "VIIII",
    8    => "VIII",
    7    => "VII",
    6    => "VI",
    5    => "V",
    4    => "IIII",
    3    => "III",
    2    => "II",
    1    => "I"
  }
end

def to_rom(dec)
  dec_str = dec.to_s
  split_dec =  dec_str.to_s.split("")
  limit = dec_str.length
  roman = ""

  1.upto(limit).each do |i|
    num = split_dec[i - 1].to_i
    next if num == 0

    length = split_dec.length
    multiplier = 10**(length - i)

    num = num * multiplier

    roman << dec_rom_num_map[num]
  end

  roman
end
