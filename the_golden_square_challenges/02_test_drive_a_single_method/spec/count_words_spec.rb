#A method called count_words that takes a string as an argument and returns the number of words in that string.

require 'count_words'

RSpec.describe 'count_words' do 
    it "if empty string presented" do 
        result = count_words('')
        expect(result).to eq 0
    end

    it "returns number of words in a string" do 
        result = count_words('hello, my name is')
        expect(result).to eq 4
    end

    it "returns number of words in a string" do 
        result = count_words('Fancy a drive my dear friend?')
        expect(result).to eq 6
    end
end