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
end