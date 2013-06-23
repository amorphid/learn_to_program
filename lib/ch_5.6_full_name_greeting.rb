def capture_first_name(user_input)
  puts "What is your first name?"
  user_input
end

def capture_middle_name(user_input)
  puts "What is your middle name?"
  user_input
end

def capture_last_name(user_input)
  puts "What is your last name?"
  user_input
end

def generate_full_name_greeting(first_name, middle_name, last_name)
  full_name = first_name + " " + middle_name + " " + last_name
  "Hello #{full_name}!"
end
