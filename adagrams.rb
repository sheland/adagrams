require 'pry'
require 'awesome_print'

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

# letters = draw_letters(letters)
#-------------wave 2-----------------------------------
# drawn_letters must match player's words
#is user input included in hand?
#do not mess with this array (letters_in_hand)!!!!
def uses_available_letters?(input, letters_in_hand)

  input = input.split("")
  tru_fals = []
  input.each do |let|

      if letters_in_hand.include?(let)
        tru_fals << letters_in_hand.delete_at(letters_in_hand.index(let))
      else
        tru_fals << false
      end
    end

    if tru_fals.include?(false)
      return false
    else
      return true
    end
end

#ap uses_available_letters?(practice_word, practice_true)
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

#score_word("computer")

#-----------------wave 4 --------------------

def highest_score_from_words(words)
  best_score = 0
  best_word = ""
  winner = {word: "a",
            score: 0}

  words.each do |word|
    word[0].split()
    word = word[0].to_s #turns the new array into a string
    score = score_word(word)
    if score > winner[:score]
     winner[:score] = score
     winner[:word] = word
    end
  end

  return winner

end

#highest_score_from_words([["CAT"], ["SUPERSONIC"], ["DOG"], ["FISH"], ["LEANNEISGREATANDSHELANISAWESOME"]])
