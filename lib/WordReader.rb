class WordReader
  attr_accessor :words
  def initialize
    @words = Array.new

    file = File.new('countries.txt', 'r')
    while (line = file.gets)
      @words.push line
    end
    file.close
  end

  def get_word
    @words[rand(@words.size)].upcase
  end

end


puts WordReader.new.get_word