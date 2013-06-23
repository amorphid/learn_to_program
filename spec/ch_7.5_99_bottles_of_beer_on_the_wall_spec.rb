# “99 Bottles of Beer on the Wall.” Write a program that prints out the lyrics
# to that beloved classic, “99 Bottles of Beer on the Wall.”

require "ch_7.5_99_bottles_of_beer_on_the_wall"

describe "99 Bottles of Beer on the Wall" do

  describe "Dynamic verse" do
    it "should include '99 bottles'"do
      dynamic_verse(99).should include("99 bottles")
    end

    it "should include '54 bottles'" do
      dynamic_verse(54).should include("54 bottles")
    end

    it "should include '1 bottle'" do
      dynamic_verse(1).should include("1 bottle")
      dynamic_verse(1).should_not include("bottles")
    end
  end

  describe "Sing 99 bottles" do
    it "should include '1' through '99'" do
      (1..99).each do |num|
        sing_99_bottles.should include(num.to_s)
      end
    end
  end
end
