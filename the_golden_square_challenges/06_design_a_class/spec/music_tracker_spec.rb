require 'music_tracker'

RSpec.describe MUSIC_TRACKER do 
    context "We want the ability to store songs the user has listened too" do 
        it "if the user inputs an empty string with no content, return an error message" do 
            song = MUSIC_TRACKER.new
            expect {song.add('')}.to raise_error "No song was provided, try again"
        end
        it "if the user adds a few songs, we want to return them as an appropriate form - as a string" do 
            song = MUSIC_TRACKER.new
            song.add('Gyrofield - Retinues')
            song.add('Maysev - Dead End')
            song.add('Simula - Attack Mode')
            expect(song.view).to eq "Gyrofield - Retinues, Maysev - Dead End, Simula - Attack Mode"
        end
        it "never return dublicates of a song, incase the user adds it in more than once" do 
            song = MUSIC_TRACKER.new
            song.add('Gyrofield - Retinues')
            song.add('Maysev - Dead End')
            song.add('Gyrofield - Retinues')
            expect(song.view).to eq "Gyrofield - Retinues, Maysev - Dead End"
        end
    end
end
        
