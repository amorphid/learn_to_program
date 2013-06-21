def capture_first_name(user_input)
  "What is your first name?"
  first_name = user_input
end

def capture_middle_name(user_input)
  "What is your middle name?"
  middle_name = user_input
end

def capture_last_name(user_input)
  "What is your last name?"
  last_name = user_input
end

def generate_full_name_greeting(first_name, middle_name, last_name)
  full_name = first_name + " " + middle_name + " " + last_name
  "Hello #{full_name}!"
end
