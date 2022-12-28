require 'make_snippet'

RSpec.describe 'make_snippet' do 
    it "returns empty string when no content given" do 
        result = make_snippet('')
        expect(result).to eq ''
    end
    it "it returns ... if word length is above 5" do 
        result = make_snippet('Fancy heading down the beach today')
        expect(result).to eq 'Fancy heading down the beach...'
    end

    it "it returns ... if word length is below 5" do 
        result = make_snippet('hey, how are you?')
        expect(result).to eq 'hey, how are you?'
    end
end
