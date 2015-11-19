# class WordReader
#   attr_accessor :words
#   def initialize
#     @words = Array.new
#
#     file = File.new('countries.txt', 'r')
#     while (line = file.gets)
#       @words.push line
#     end
#     file.close
#   end
# end


abecedario = Hash.new
abc = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
abc.each do |letra|
  abecedario[letra.to_sym] = false
end

abecedario.each do |item|
  puts item
end