require 'music_library'

RSpec.describe MusicLibrary do 
    it 'tests' do 
        lib = MusicLibrary.new
        track_1 = double :track, matches?: false
        track_2 = double :track, matches?: false
        lib.add(track_1)
        expect(lib.search(keyword)).to eq [track_2]
    end
end
