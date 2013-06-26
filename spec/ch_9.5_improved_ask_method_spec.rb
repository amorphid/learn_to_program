# Improved ask method.

# That ask method I showed you was OK, but I bet you could do better. Try to
# clean it up by removing the answer variable. You’ll have to use return to
# exit from the loop. (Well, it will get you out of the whole method, but it
# will get you out of the loop in the process.) How do you like the resulting
# method? I usually try to avoid using return (a personal preference), but I
# might make an exception here.

require "ch_9.5_improved_ask_method"

describe "Improved ask method" do
  describe "Gets question answer" do
    let(:yes) { "yes" }
    let(:no) { "no" }

    it "should be 'yes'" do
      gets_question_answer(yes).should == yes
      gets_question_answer("YES").should == yes
    end

    it "should be 'no'" do
      gets_question_answer(no).should == no
      gets_question_answer("NO").should == no
    end

    it "should not get 'yes' and return 'no'" do
      gets_question_answer(yes).should_not == no
    end
  end

  # describe "Ask sneaky questions to determine if bed wetter" do
  #   it "should be 'true'" do
  #     ??--How could this be tested?--??
  #     ask_sneaky_questions_to_determine_if_bed_wetter.should == true
  #   end
  # end
end
