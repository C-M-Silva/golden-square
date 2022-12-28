require 'music_library'
require 'track'

RSpec.describe 'integration' do 
    it 'testing return' do 
        song_1 = Track.new('one two', 'three four')
        song_2 = Track.new('ten', 'twelve')
        lib = MusicLibrary.new
        lib.add(song_1)
        lib.add(song_2)
        result = lib.search('ten')
        expect(result).to eq [song_2]
    end
end