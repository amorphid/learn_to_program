# “Modern” Roman numerals.

# Eventually, someone thought it would be ter- ribly clever if putting a
# smaller number before a larger one meant you had to subtract the smaller one.
# As a result of this development, you must now suffer. Rewrite your previous
# method to return the new-style Roman numerals so when someone calls
# roman_numeral 4, it should return 'IV'.

require "ch_9.5_modern_roman_numerals"

describe "Old school roman numerals" do
  describe "To rom(dec)" do
    it "should convert 4 to 'IIII'" do
      to_rom(4).should == "IV"
    end

    it "should convert 7 to 'VII'" do
      to_rom(7).should == "VII"
    end

    it "should convert 9 to 'IX'"do
      to_rom(9).should == "IX"
    end

    it "should convert 13 to 'XIII'" do
      to_rom(13).should == "XIII"
    end

    it "should convert 40 to 'XL'" do
      to_rom(40).should == "XL"
    end

    it "should convert 90 to 'XC'" do
      to_rom(90).should == "XC"
    end

    it "should conver 99 to 'XCIX'" do
      to_rom(99).should == "XCIX"
    end

    it "should convert 131 to 'CXXXI'" do
      to_rom(131).should == "CXXXI"
    end

    it "should convert 400 to 'CD'" do
      to_rom(400).should == "CD"
    end

    it "should convert 900 to 'CM'" do
      to_rom(900).should == "CM"
    end

    it "should convert 1000 to 'M'" do
      to_rom(1000).should == "M"
    end

    it "should be 'MDCCCCVIII'" do
      to_rom(1908).should == "MCMVIII"
    end

    it "should be 'MMMDCCCCLXXXXVIIII'" do
      to_rom(3999).should == "MMMCMXCIX"
    end
  end
end
