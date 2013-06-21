require "ch_5.6_full_name_greeting"

describe "Chapter 5.6 - Full name greeting" do
  let(:first_name) { "James" }
  let(:middle_name) { "Tiberius" }
  let(:last_name) { "Kirk" }
  let(:full_name_greeting) {
    "Hello #{first_name} #{middle_name} #{last_name}!"
  }

  describe "First name" do
    it "should equal :first_name" do
      capture_first_name(first_name).should == first_name
    end
  end

  describe "Middle name" do
    it "should equal :middle_name" do
      capture_middle_name(middle_name).should == middle_name
    end
  end

  describe "Last name" do
    it "should equal :last_name" do
      capture_last_name(last_name).should == last_name
    end
  end

  describe "Full name greeting" do
    it "should equal :full_name_greeting" do
      generate_full_name_greeting(
        first_name, middle_name, last_name
      ).should == full_name_greeting
    end
  end
end
