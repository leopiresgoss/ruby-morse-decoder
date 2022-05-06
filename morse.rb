class MorseDecoder
  @@letters_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  def decode_char(str = '')
    @@letters_hash[str] ||= ''
  end

# Method that decode a word by calling decode_char method
  def decode_word(param1)
    param = param1
    text = ''
    param.split.each { |letter| text << decode_char(letter) }
    text
  end

# Method that decode a sentence by calling decode_word method
  def decode(param2)
    param1 = param2
    text = ''
    param1.split('   ').each { |word| text << "#{decode_word(word)} " }
    text
  end

end

# Test

morse_decoder = MorseDecoder.new
puts morse_decoder.decode_char('...-')
puts morse_decoder.decode_char('x')
# => "V"
# => ""

puts morse_decoder.decode('-- -.--   -. .- -- .')

puts morse_decoder.decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')