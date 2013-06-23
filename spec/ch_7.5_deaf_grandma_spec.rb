# Deaf grandma. Whatever you say to Grandma (whatever you type in), she should
# respond with this:

# HUH?!  SPEAK UP, SONNY!

# unless you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back:

# NO, NOT SINCE 1938!

# To make your program really believable, have Grandma shout a different year
# each time, maybe any year at random between 1930 and 1950.

require "ch_7.5_deaf_grandma"

describe "Deaf grandma" do
  let(:a_question) { "Have you eaten a live frog?" }

  describe "Random year" do
    it "should be between 1930 and 1950" do
      100.times {
        generate_random_year.should be_within(10).of(1940)
      }
    end
  end

  describe "Ask grandma(a_question, random_year)"
    it "should say 'HUH?!  SPEAK UP, SONNY!'" do
      ask_grandma(a_question).should == "HUH?!  SPEAK UP, SONNY!"
    end

    it "should say 'NO, NOT SINCE :year!'" do
      year = generate_random_year
      ask_grandma(a_question.upcase, year).should == "NO, NOT SINCE #{year}!"
    end
end
