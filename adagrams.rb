# no parameters
# array of random ten one-letter strings
# letters CANNOT repeat
# each ltr has a certain quantity
# ltrs go back after invocation

# data structure
# hash with alpha:amount
# when a hand is drawn, subtract value by 1
# when game is ended, key values return to default

# letters ={
#   "A": 0,
#   "B": 1,
#   "C": 0
# }

letters ={
"A": 9,
"B": 2,
"C": 2,
"D": 4,
"E": 12,
"F": 2,
"G": 3,
"H": 2,
"I": 9,
"J": 1,
"K": 1,
"L": 4,
"M": 2,
"N": 6,
"O": 8,
"P": 2,
"Q": 1,
"R": 6,
"S": 4,
"T": 6,
"U": 4,
"V": 2,
"X": 1,
"Y": 2,
"Z": 1
}



# ----------- ten letter draw -----------------
puts letters

4.times do
  draw_letters = ""
  sample_array = []
  # letters.select do |k, v|
  #   puts sample(k)
  # end


  sample_array << letters.to_a.sample(10) #randomizes keys and puts in array

  sample_array = sample_array.flatten(1)
#transform data into method
sample_array.each do |letter_array| #iterate through each array to get the letters, then subtract one from the key value

  until draw_letters.length == 10 #draw_letters string must equal to length
    key_value = letters[letter_array[0]]

      if key_value > 0
          draw_letters << "#{letter_array[0]} " #all 0 index is ltr
      else
         garbage = []
         garbage = "#{letter_array[0]} "
     end
  end
  print letter_array[0]
  letters.each do |k, v|
    if letter_array[0] == k
      new_val = v - 1
      puts new_val
      letters[letter_array[0]] = new_val #replaces hash with new val
    end
  end
end

print draw_letters
puts "\n"
puts letters
end
