def days_per_year
  365.25
end

def hours_per_day
  24
end

def seconds_per_hour
  3600
end

def seconds_per_day
  seconds_per_hour * hours_per_day
end

def seconds_per_year
  seconds_per_day * days_per_year
end

# Hours in a year

def hours_per_year
  hours_per_day * days_per_year
end

# Minutes in a secade

def minutes_per_decade
  seconds_per_day * days_per_year
end

# Your age in seconds

def your_age_in_seconds(age_in_years)
  seconds_per_year * age_in_years
end

# Our dear author's age

def our_dear_authors_age_in_years(age_in_seconds)
  age_in_seconds / seconds_per_year
end
