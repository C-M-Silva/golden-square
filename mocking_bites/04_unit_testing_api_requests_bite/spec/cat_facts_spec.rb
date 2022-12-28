require 'Cat_facts'

RSpec.describe CatFacts do
    it 'returns a cat fact' do 
        fact = double :fact
        allow(fact).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Some notable people who disliked cats:  Napoleon Bonaparte, Dwight D. Eisenhower, Hitler.","length":89}')
        catclass = CatFacts.new(fact)
        expect(catclass.provide).to eq 'Cat fact: Some notable people who disliked cats:  Napoleon Bonaparte, Dwight D. Eisenhower, Hitler.'
    end
end