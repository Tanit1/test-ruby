def translate(string)
   string = string.downcase
   string = string.split(' ')

   vowels = ['a', 'e', 'i', 'o', 'u']
   result = []

   # POUR CHAQUE MOT CONTENU DANS string
   string.each_with_index do |word, i|
      translation = ''
      qu = false

      # SI string COMMENCE PAR UNE VOYELLE => AJOUTE ay À LA FIN DU MOT
      if vowels.include? word[0]
         translation = word + 'ay'
         result.push(translation)
      # SINON DÉCOUPE LE MOT
      else
         word  = word.split('')
         count = 0

         # POUR CHAQUE LETTRE CONTENU PAR MOT
         word.each_with_index do |char, index|
            if vowels.include? char
               # SI LE MOT COMMENCE PAR 'qu'
               if char == 'u' and translation[-1] == 'q'
                  qu = true
                  translation = string[i][count + 1..string[i].length] + translation + 'uay'
                  result.push(translation)
                  next
               end
               break
            else
               translation += char
               count += 1
            end
         end

         # S'IL N'Y A PAS DE "qu"
         if not qu
            translation = string[i][count..string[i].length] + translation + 'ay'
            result.push(translation)
         end
      end
   end

   return result.join(' ').to_s
end

# puts translate('apple')