require 'WordReader'

describe 'WordReader' do

  it 'should initialize' do
    word_reader = WordReader.new
    expect(word_reader.instance_of?(WordReader)).to be(true)
  end

  it 'should load an array of words' do
    word_reader = WordReader.new
    expect(word_reader.words).not_to be(nil)
  end

  it 'should get a random word' do
    word_reader = WordReader.new
    word = word_reader.get_word
    expect(word).not_to be(nil)
  end


  it 'should get rwo different random words' do
    word_reader = WordReader.new
    word1 = word_reader.get_word
    word2 = word_reader.get_word
    expect(word1).not_to eq(word2)
  end

end