def echo(string)
   return string.to_s
end

# puts echo('bye')

def shout(string)
   return string.to_s.upcase
end

# puts shout('hello world !')

def repeat(string, nb=2)
   result = ""

   nb.times do
      result += "#{string} "
   end

   return result.rstrip # rstrip => SUPPRIME LES ESPACES EN FIN DE CHAINE
end

# puts repeat('hello')