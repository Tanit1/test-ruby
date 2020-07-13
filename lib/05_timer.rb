def start_of_word(string, start=0, length)
   return string.slice(start, length)
end

# puts start_of_word('bob', 2)

def first_word(string)
   return string.split.first.to_s
end

# puts first_word("Hello World !")

def titleize(string)
   result = ""

   # POUR CHAQUE MOT CONTENU DANS string => SI LE MOT EST SUPÉRIEUR À 3 LETTRES -> MET EN CAPITAL LA PREMIÈRE LETTRE (capitalize!)
   string = string.split.each{|word| word.capitalize! if word.length > 3}.join(' ') 

   # MET EN CAPITAL LA PREMIÈRE LETTRE DE string ET AJOUTE string À PARTIR DE L'INDEX 1 JUSQU'À LA FIN DE string (2ème lettre)
   result = string.slice(0).upcase + string.slice(1..-1) 

   return result
end

# puts titleize("war and peace")

def time_string(seconds)
   return Time.at(seconds).utc.strftime("%H:%M:%S")
end

# puts time_string(4000)