# Leap years.

# Write a program that asks for a starting year and an ending year and then
# puts all the leap years between them (and including them, if they are also
# leap years). Leap years are years divisible by 4 (like 1984 and 2004).
# However, years divisible by 100 are not leap years (such as 1800 and 1900)
# unless they are also divisible by 400 (such as 1600 and 2000, which were in
# fact leap years). What a mess!

require "ch_7.5_leap_years"

describe "Leap years" do
  describe "Leap year?" do
    it "should be true for 1904, 1980, and 2012" do
      leap_year?(1904).should == true
      leap_year?(1980).should == true
      leap_year?(2012).should == true
    end

    it "should be true for 1600, 2000, and 2400" do
      leap_year?(1600).should == true
      leap_year?(2000).should == true
      leap_year?(2400).should == true
    end

    it "should be false for 1907, 1982, and 2013" do
      leap_year?(1907).should == false
      leap_year?(1982).should == false
      leap_year?(2013).should == false
    end

    it "should be false for 1700, 1800, and 1900" do
      leap_year?(1700).should == false
      leap_year?(1800).should == false
      leap_year?(1900).should == false
    end
  end

  describe "All leap years in range(year_number_1, year_number_2)" do
    it "should be [1912, 1916, 1920]" do
      all_leap_years_in_range(1909, 1922).should == [1912, 1916, 1920]
    end

    it "should be [1896, 1904]" do
      all_leap_years_in_range(1896, 1904).should == [1896, 1904]
    end

    it "should be [9996, 10000, 10004]" do
      all_leap_years_in_range(9996, 10004).should == [9996, 10000, 10004]
    end
  end
end
