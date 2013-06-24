def generate_random_year
  rand(1930..1950)
end

def talk_to_grandma(i_said, year = generate_random_year)
  if i_said == "BYE"
    i_said_bye
  else
    i_did_not_say_bye(i_said)
  end
end

def i_said_bye
  @count += 1

  if @count == 3
    "BYE SONNY!"
  else
    "SONNY, I DIDN'T HEAR WHAT YOU SAID."
  end
end

def i_did_not_say_bye(i_said, year = generate_random_year)
  @count = 0

  if i_said.upcase == i_said
    "NO, NOT SINCE #{year}!"
  else
    "HUH?!  SPEAK UP, SONNY!"
  end
end

def main
  @count = 0

  while @count < 3
    puts "SONNY, COME HERE AND TALK TO GRANDMA!"
    i_said = gets.chomp

    puts talk_to_grandma(i_said)
  end
end
