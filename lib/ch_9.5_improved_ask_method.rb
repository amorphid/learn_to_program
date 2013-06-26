
def intro
  puts 'Hello, and thank you for taking the time to'
  puts 'help me with this experiment.  My experiment'
  puts 'has to do with the way people feel about'
  puts 'Mexican food.  Just think about Mexican food'
  puts 'and try to answer every question honestly,'
  puts 'with either a "yes" or a "no".  My experiment'
  puts 'has nothing to do with bed-wetting.'
end

def ask_sneaky_questions_to_determine_if_bed_wetter
  puts "Do you like eating tacos?"
  gets_question_answer

  puts "Do you like eating burritos?"
  gets_question_answer

  puts "Do you wet the bed?"
  wets_bed = wets_bed?(gets_question_answer)

  puts "Do you like eating chimichangas?"
  gets_question_answer

  puts "Just a few more questions..."

  puts 'Do you like eating sopapillas?'
  gets_question_answer

  wets_bed
end

def gets_question_answer(input = gets.chomp)
  answer = input.downcase

  until (answer == "yes" || answer == "no")
    puts "Please answer \"yes\" or \"no\"."
    answer = gets.chomp
  end

  answer
end

def wets_bed?(yes_or_no)
  if yes_or_no == "yes"
    true
  else
    false
  end
end

def app
  intro
  ask_sneaky_questions_to_determine_if_bed_wetter
end

# puts app
