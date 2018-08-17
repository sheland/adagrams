require 'pry'
require 'awesome_print'

# #-------------WAVE-1--PASS-----------------
# def draw_letters
#   #string of letters of the correct quantity
#   letters = ("A" * 9) + ("B" * 2) + ("C" * 2) + ("D" * 4) + ("E" * 12) + ("F" * 2) + ("G" * 3) + ("H" * 2) + ("D" * 4) + ("E" * 12) + ("F" * 2) + ("G" * 3) + ("H" * 2) + ("I" * 9) + ("J" * 1) + ("K" * 1) + ("L" * 4) + ("M" * 2) + ("N" * 6) + ("O" * 8) + ("P" * 2) + ("Q" * 1) + ("R" * 6) + ("S" * 4) + ("T" * 6) + ("U" * 4) + ("V" * 2) + ("W" * 2) + ("Y" * 2) + ("Z" * 1)
#   letters = letters.split(//) #turns string letters into array of every character
#   # = letters.flatten.join()
#   return letters.sample(10) #returns 10 elements of the array randomlys
# end
#
# # #-------------wave 2 PASS-------------------------
# # drawn_letters must match player's words
# #is user input included in hand?
# #do not mess with this array (letters_in_hand)!!!!
# def uses_available_letters?(input, letters_in_hand)
#
#   input = input.split("") #splits the string into array
#   tru_fals = [] #array to determine validity of input later
#   input.each do |let|
#       if letters_in_hand.include?(let) #if the input letter matches a letter in hand
#         tru_fals << letters_in_hand.delete_at(letters_in_hand.index(let)) #delete letter from the one in hand & push to tru_fals
#       else
#         tru_fals << false #if no match, pushes false
#       end
#     end
#
#   if tru_fals.include?(false) #if there is any false, automatic false
#     return false
#   else
#     return true #else input is valid
#   end
# end
#
# # #-------------------wave 3--PASS----------------
def score_word(word)
  word = word.upcase.split("") #to array of strings
  score = 0
  if word.length > 6
    score += 8
  end
#when case helps to determine score dependent on letter
  word.each do |i| #checking each string in array 'word'
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

# #-----------------wave 4 --------------------

def highest_score_from_words(words)
  winner = {word: "a",
            score: 0}

  words.each do |word|
    word.split("")
    word = word.to_s #turns the new array into a string
    score = score_word(word)

    if score == winner[:score]
      if word.length == 10
        winner[:word] = word
        winner[:score] = score

      elsif word.length == 10 && winner[:word].length == 10
        winner[:word] = winner[:word]
        winner[:score] = winner[:score]

      elsif word.length < winner[:word].length && word.length != 10
        winner[:word] = word
        winner[:score] = score
      end

    elsif score > winner[:score]
      winner[:word] = word
      winner[:score] = score
    end
  end
    return winner
end
