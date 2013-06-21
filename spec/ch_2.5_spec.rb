require "ch_2.5"

describe "Chapter 2.5" do
  describe "Hours per day" do
    it "should equal 24" do
      hours_per_day.should == 24
    end
  end

  describe "Days per year" do
    it "should equal 24" do
      days_per_year.should == 365.25
    end
  end

  describe "Seconds per hour" do
    it "should equal 3600" do
      seconds_per_hour.should == 3600
    end
  end

  describe "Seconds per year" do
    it "should equal seconds_per_day times days_per_year" do
      seconds_per_year.should == seconds_per_day * days_per_year
    end
  end

  describe "Hours per year" do
    it "should equal hours_per_day times day_per_year" do
      hours_per_year.should == hours_per_day * days_per_year
    end
  end

  describe "Minutes per decade" do
    it "should equal seconds_per_day times days_per_year" do
      minutes_per_decade.should == seconds_per_day * days_per_year
    end
  end

  describe "Your age in seconds" do
    it "should be seconds_per_year * my_age_in_years" do
      my_age_in_years = 38
      your_age_in_seconds(my_age_years).should ==
        seconds_per_year * my_age_in_years
    end
  end

  describe "Our dear author's age (in years)" do
    it "should equal authors_age_in_seconds divided by seconds_per_year" do
      authors_age_in_seconds = 1.111 * 10**6
      our_dear_authors_age_in_years(authors_age_in_seconds).should ==
        authors_age_in_seconds / seconds_per_year
    end
  end
end
