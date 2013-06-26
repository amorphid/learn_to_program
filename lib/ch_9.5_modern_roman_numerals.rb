def dec_rom_num_map
  {
    3000 => "MMM",
    2000 => "MM",
    1000 => "M",
    900  => "CM",
    800  => "DCCC",
    700  => "DCC",
    600  => "DC",
    500  => "D",
    400  => "CD",
    300  => "CCC",
    200  => "CC",
    100  => "C",
    90   => "XC",
    80   => "LXXX",
    70   => "LXX",
    60   => "LX",
    50   => "L",
    40   => "XL",
    30   => "XXX",
    20   => "XX",
    10   => "X",
    9    => "IX",
    8    => "VIII",
    7    => "VII",
    6    => "VI",
    5    => "V",
    4    => "IV",
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

def app
  puts "MCCCXXXIV should be #{to_rom(1234)}"
  puts "CMXCIX should be #{to_rom(999)}"
end

# app
