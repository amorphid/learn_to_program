# used block_given? just for fun, hadn't tried it before
def build_and_sort_array
  array_of_strings = if block_given?
    yield
  else
    gets_chomp_until_empty_string_as_array
  end

  array_of_strings.sort
end

def gets_chomp_until_empty_string_as_array
  array = []

  while true
    print "Enter a word:  "
    string = gets.chomp
    break if string.empty?
    array << string
  end

  array
end

