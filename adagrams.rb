# no parameters
# array of random ten one-letter strings
# letters CANNOT repeat
# each ltr has a certain quantity
# ltrs go back after invocation

# data structure
# hash with alpha:amount
# when a hand is drawn, subtract value by 1
# when game is ended, key values return to default

letters ={
  "A": 0,
  "B": 1,
  "C": 0
}

# letters ={
# "A": 9,
# "B": 2,
# "C": 2,
# "D": 4,
# "E": 12,
# "F": 2,
# "G": 3,
# "H": 2,
# "I": 9,
# "J": 1,
# "K": 1,
# "L": 4,
# "M": 2,
# "N": 6,
# "O": 8,
# "P": 2,
# "Q": 1,
# "R": 6,
# "S": 4,
# "T": 6,
# "U": 4,
# "V": 2,
# "X": 1,
# "Y": 2,
# "Z": 1
# }

# ----------- ten letter draw -----------------
  #draw_letters = ""
  #sample_array = []
  # letters.select do |k, v|
  #   puts sample(k)
  # end

  #this method is inputting 10 #'s into array before being checked for values
  #sample_array << letters.to_a.sample(10) #randomizes keys and puts in array

#for draw lettters two parameters, hash, num
#the draw letters method would draw from the hash, while the num would go into sample method so that if alphabet with a value < 1 is in the original array, we can count the length of the new array without the invalid letters subract by 10 and then invoke draw letters with that number



#transform data into method
#sample_array.each do |letter_array|
def draw_letters(hash, num)
  sample_array = []
  sample_array << hash.to_a.sample(num)
  # sample_array.each do |letters|
  #       #randomizes keys and puts in array
  #   end
sample_array = sample_array.flatten(1)
print sample_array

sample_array.each do |index|
  empty_count = 0
  true_length = index.length - empty_count
    #take method 'takes' specific number of items in array

  sample_array.delete(index)
    if index.length < 1
      sample_array.delete(index)
      if index[1] < 1
        empty_count += 1 #adds one for every empty array
        sample_array.take(true_length)
      else draw_letters(hash, empty_count)
      end
    # if index[1] > 0
    #    sample_array.map(&:inspect).join(", ")

      # sample_array.split("no").select(&present?)
      # num2 = num - (sample_array.length)


    end
  end
  print sample_array
end

draw_letters(letters, 1)

#iterate through each array to get the letters, then subtract one from the key value

  # until draw_letters.length == 10 #draw_letters string must equal to length
  #   key_value = letters[letter_array[0]]
  #
  #     if key_value > 0
  #         draw_letters << "#{letter_array[0]} " #all 0 index is ltr
  #     elsif
  #        key_value < 1
  #        garbage = []
  #        garbage << "#{letter_array[0]} "
  #    end
  # end

  # if key_value < 1
  #     key_value
  #     next
  #   elsif key_value > 0
  #     key_value -= 1
  #   end
#   print letter_array[0]
#   letters.each do |k, v|
#     if letter_array[0] == k
#       new_val = v - 1
#       puts new_val
#       letters[letter_array[0]] = new_val #replaces hash with new val
#     end
#   end
# end
#
# print draw_letters
