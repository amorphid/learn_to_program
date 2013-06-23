def dynamic_verse(num_bottles)
  verse = ""

  line_start = if num_bottles > 1
    "#{num_bottles} bottles"
  else
    "1 bottle"
  end

  verse << line_start + " of beer on the wall\n"
  verse << line_start + " of beer!\n"
  verse << "Take one down\n"
  verse << "pass it around\n"

  verse
end

def sing_99_bottles
  song = ""

  99.downto(1).each do |num_bottles|

    song << dynamic_verse(num_bottles)

    if num_bottles > 2
      song << "#{num_bottles - 1 } bottles of beer on the wall!\n\n"
    elsif num_bottles == 2
      song << "1 more bottle of beer on the wall!\n\n"
    else
      song << "No more bottles of beer on the wall!"
    end
  end

  song
end

