#require 'pry'

letters ={
"A": 9,
"B": 2,
"C": 2,
"D": 4,
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

#-------------WAVE-1--draw--10--letters-----------------
def draw_letters(hash)
  player_letters = [] #will hold return value
    hash.each do |k, v|
      if v > 0 #skips all keys with values < 0
        player_letters << "#{k}" #pushes valid key to the array
      end
      hash[k] = v - 1 #then subtracts the value by one
    end
    return player_letters.sample(10) #will not duplicate letters maybe .map somewhere?
  end

letters = draw_letters(letters)
#------------------------------------------------------
#drawn_letters must match player's words
practice_word = "catt"
practice_true = ["C", "B", "A", "T", "H", "T"]
practice_false = ["d", "c", "a", "b"]

#is user input included in hand?
#do not mess with this array (letters_in_hand)!!!!
def uses_available_letters?(input, letters_in_hand)
  # input.upcase! #converts to upcase for comparison of in hand (all caps)
  # input = input.split("")

  used_array = [false] * letters_in_hand.length
  input.split("")each do |index|
    letters_in_hand.each do |x|
        print "letters in hand #{x}"
      # if index == x
      #   used_array[x.index] = true
      # end
    end
  end
  print used_array
  # letters_in_hand hash
  # ltr => 1
  # if k
  #   += 1
#
# iterate through input
#   count letters

  # letters_in_hand = letters_in_hand.join("")
  # ltr_count = 0
  # print letters_in_hand
  #
  # input.each do |i|
  #   ltr_count = letters_in_hand.count i
  # end
  #
  # puts "The letter count is #{ltr_count}"
  # puts "The length of the input is #{input.length}"
    # print input
    # check = input.all?{|i| letters_in_hand.include?(i)} #determines true or false - for i does in hand include?
    # puts check
end

uses_available_letters?(practice_word, practice_true)
#---------------------------wave 3-----------------------

def score_word(word)
  word = word.upcase.split("")
  score = 0
  if word.length > 6
    score += 8
  end

  word.each do |i|
    case i
      when "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"
        score += 1
      when "D", "G"
        score += 2
      when "B", "C", "M", "P"
        score += 3
      when "F", "H", "V", "W", "Y"
        score += 4
      when "K"
        score += 5
      when "J", "X"
        score += 8
      when "Q", "Z"
        score += 10
      end
    end
    return score
end

score_word("computer")

#-----------------wave 4 --------------------

# def highest_score_from_words(words)
#   best_score = 0
#   best_word = ""
#   winner = {word: "a"
#             score: 0}
#
#   words.each do |i|
#     print i[0].upcase.split()
#     word = i[0].to_s #turns the new array into a string
#     score = score_word(word)
#       if score > winner[:score]
#         winner << word: word, score: score
#       end
#   end
#
#   print winner
#
# end
#
# highest_score_from_words([["cat"], ["supersonic"] ["dog"], ["fish"]])
