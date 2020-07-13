def translate(string)
   string = string.downcase
   string = string.split(' ')

   vowels = ['a', 'e', 'i', 'o', 'u']
   result = []

   # POUR CHAQUE MOT CONTENU DANS string
   string.each_with_index do |word, i|
      translation = ''

      # SI string COMMENCE PAR UNE VOYELLE => AJOUTE ay À LA FIN DU MOT
      if vowels.include? word[0]
         translation = word + 'ay'
         result.push(translation)
      # SINON DÉCOUPE LE MOT
      
      end
   end

   return result.join(' ').to_s
end

puts translate('apple')