letters ={
"A": -9,
"B": -2,
"C": 2,
"D": 4,
"E": -12,
"F": 2,
"G": 3,
"H": 2,
"I": -9,
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
"T": -6,
"U": 4,
"V": 2,
"X": 1,
"Y": -2,
"Z": 1
}

#---------------------draw 10 letters-----------------
def draw_letters(hash)
  player_letters = []
    hash.each do |k, v|
      if v > 0
        player_letters << "#{k}"
      end
    end
  return player_letters.sample(10)
end

letters = draw_letters(letters)

print letters
#------------------------------------------------------
