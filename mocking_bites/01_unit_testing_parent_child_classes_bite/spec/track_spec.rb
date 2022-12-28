require 'track'

RSpec.describe Track do
    it 'check if false' do 
        song = Track.new('Something', 'Pig')
        key = song.matches?('some')
        expect(key).to eq false
    end
    it 'check if true' do 
        song = Track.new('Something', 'Pig')
        key = song.matches?('Pig')
        expect(key).to eq true
    end
end
