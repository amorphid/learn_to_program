# Shuffle.

# Now that you’ve finished your new sorting algorithm, how about the opposite?
# Write a shuffle method that takes an array and returns a to- tally shuffled
# version. As always, you’ll want to test it, but testing this one is trickier:
# How can you test to make sure you are getting a perfect shuffle? What would
# you even say a perfect shuffle would be? Now test for it.

def shuffle_array(unshuffled)
  limit = unshuffled.length
  shuffled = []

  limit.downto(1) do |i|
    random_element = unshuffled[rand(i)]

    shuffled << random_element
    unshuffled -= [random_element]
  end

  shuffled
end

# most certainly buggy.  Only tested with [10,9,8,7,6,5,4,3,2,1]
def sort_array(unshuffled)
  limit = unshuffled.length - 2
  count = 0

  until count == limit
    0.upto(limit) do |i|
      count += 1
      next unless unshuffled[i] > unshuffled[i+1]

      temp = unshuffled[i]
      unshuffled[i] = unshuffled[i+1]
      unshuffled[i+1] = temp

      count = 0

    end
  end

  unshuffled
end

def app
  array = [10,9,8,7,6,5,4,3,2,1]
  puts sort_array(array) == [1,2,3,4,5,6,7,8,9,10]
  puts shuffle_array(array)
end

# app
