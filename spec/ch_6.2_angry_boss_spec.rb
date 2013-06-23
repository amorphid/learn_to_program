# Angry boss. Write an angry boss program that rudely asks what you want.
# Whatever you answer, the angry boss should yell it back to you and then
# fire you. For example, if you type in I want a raise, it should yell back
# like this:

# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

require "ch_6.2_angry_boss"

describe "Angry boss" do
  let(:request) { "I'd prefer not to work past 10p on Saturday." }
  let(:rage_yell) { "WHADDAYA MEAN #{request.upcase}?!? YOU'RE FIRED!!" }

  describe "Capture request" do
    it "should be :request" do
      capture_request(request).should == request
    end
  end

  describe "Boss rage yells and fires you" do
    it "should be :rage_yell" do
      boss_rage_yells_and_fires_you(request).should == rage_yell
    end
  end
end
