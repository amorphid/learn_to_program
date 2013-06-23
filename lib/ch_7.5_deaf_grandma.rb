def generate_random_year
  rand(1930..1950)
end

def ask_grandma(a_question, year = generate_random_year)
  if a_question != a_question.upcase
    "HUH?!  SPEAK UP, SONNY!"
  else
    "NO, NOT SINCE #{year}!"
  end
end
