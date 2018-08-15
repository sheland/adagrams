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
practice_true = ["c", "b", "a", "t", "h"]
practice_false = ["d", "c", "a", "b"]

#is user input included in hand?
def uses_available_letters?(input, letters_in_hand)
  input.upcase! #converts to upcase for comparison of in hand (all caps)
  input = input.split("") #splits input into array of characters
  check = input.all?{|i| letters_in_hand.include?(i)} #determines true or false
end

uses_available_letters?(practice_word, letters)
