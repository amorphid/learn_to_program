# # Deaf grandma extended. What if Grandma doesn’t want you to leave? When you
# # shout BYE, she could pretend not to hear you. Change your previous program so
# # that you have to shout BYE three times in a row. Make sure to test your
# # program: if you shout BYE three times but not in a row, you should still be
# # talking to Grandma.

require "ch_7.5_deaf_grandma_extended"

describe "Deaf grandma" do
  describe "Generate random year" do
    it "should be between 1930 and 1950" do
      100.times {
        generate_random_year.should be_within(10).of(1940)
      }
    end
  end

  describe "Talk to grandma" do
    describe "I said 'BYE'" do
      it "should be 'BYE SONNY!'" do
        @count = 2
        i_said_bye.should == "BYE SONNY!"
        @count.should == 3
      end

      it "should be 'SONNY, I DIDN'T HEAR WHAT YOU SAID.'" do
        @count = 0
        i_said_bye.should == "SONNY, I DIDN'T HEAR WHAT YOU SAID."
        @count.should == 1
      end
    end

    describe "I did not say 'BYE'" do
      it "should be 'NO, NOT SINCE \#{year}!'" do
        year = generate_random_year
        i_did_not_say_bye("HI GRANDMA", year).should == "NO, NOT SINCE #{year}!"
      end

      it "should be 'HUH?!  SPEAK UP, SONNY!'" do
        i_did_not_say_bye("Hi Grandma").should == "HUH?!  SPEAK UP, SONNY!"
      end
    end
  end
end
