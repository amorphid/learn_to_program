# # Roman Old-school Roman numerals.

# # In the early days of Roman numerals, the Romans didn’t bother with any of
# # this new-fangled subtraction “IX” nonsense. No sir, it was straight addition,
# # biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that
# # when passed an integer between 1 and 3000 (or so) returns a string containing
# # the proper old- school Roman numeral. In other words, old_roman_numeral 4
# # should return 'IIII'. Make sure to test your method on a bunch of different
# # numbers. Hint: Use the integer division and modulus methods on page 32.

# # For reference, these are the values of the letters used:
# # I = 1   V = 5   X = 10  L = 50
# # C = 100 D = 500 M = 1000

require "ch_9.5_old-school_roman_numerals"

describe "Old school roman numerals" do
  describe "To rom(dec)" do
    it "should convert 4 to 'IIII'" do
      to_rom(4).should == "IIII"
    end

    it "should convert 7 to 'VII'" do
      to_rom(7).should == "VII"
    end

    it "should convert 13 to 'XIII'" do
      to_rom(13).should == "XIII"
    end

    it "should conver 99 to 'LXXXXVIIII'" do
      to_rom(99).should == "LXXXXVIIII"
    end

    it "should convert 131 to 'CXXXI'" do
      to_rom(131).should == "CXXXI"
    end

    it "should convert 1000 to 'M'" do
      to_rom(1000).should == "M"
    end

    it "should be 'MDCCCCVIII'" do
      to_rom(1908).should == "MDCCCCVIII"
    end

    it "should be 'MMMDCCCCLXXXXVIIII'" do
      to_rom(3999).should == "MMMDCCCCLXXXXVIIII"
    end
  end
end

