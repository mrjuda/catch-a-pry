# catchapry.rb

@morse_code_dictionary = {



  '.-' => 'A',



  '-...' => 'B',



  '-.-.' => 'C',



  '-..' => 'D',



  '.' => 'E',



  '..-.' => 'F',



  '--.' => 'G',



  '....' => 'H',



  '..' => 'I',



  '.---' => 'J',



  '-.-' => 'K',



  '.-..' => 'L',



  '--' => 'M',



  '-.' => 'N',



  '---' => 'O',



  '.--.' => 'P',



  '--.-' => 'Q',



  '.-.' => 'R',



  '...' => 'S',



  '-' => 'T',



  '..-' => 'U',



  '...-' => 'V',



  '.--' => 'W',



  '-..-' => 'X',



  '-.--' => 'Y',



  '--..' => 'Z'



}



def decode_char(letters)

  @morse_code_dictionary[letters]

end



def decode_word(words)

  letters = words.split.map { |letters| decode_char(letters) }



  letters.join

end



def decode(code)

  words = code.split('   ').map { |word| decode_word(word) }



  words.join('  ')

end



puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

