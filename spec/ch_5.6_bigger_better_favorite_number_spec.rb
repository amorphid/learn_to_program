require "ch_5.6_bigger_better_favorite_number"

describe "Bigger, better favorite number" do
  let(:favorite_number) { 41 }
  let(:favorite_number_plus_one) { favorite_number + 1 }
  let(:one_up) {
    "#{favorite_number} is good, but #{
      favorite_number_plus_one
    } is bigger and better."
  }

  describe "Capture favorite number" do
    it "should be :favorite_number" do
      capture_favorite_number(favorite_number).should == favorite_number
    end
  end

  describe "Add 1 to favorite number" do
    it "should be :favorite_number_plus_one" do
      add_1_to_favorite_number(favorite_number).should ==
        favorite_number_plus_one
    end
  end

  describe "One up favorite_number" do
    it "should be :one_up_favorite_number" do
      one_up_favorite_number(
        favorite_number, favorite_number_plus_one
      ).should == one_up
    end
  end
end
