class MUSIC_TRACKER 
    def initialize
        # define an array which will store the songs we have listened too
        @music_arr = []
    end 

    def add(song)
        # this method will handle the adding of new music into the list of music listened too.
        if song == ''
            fail "No song was provided, try again"
        else
            unless @music_arr.include?(song)
                @music_arr << song
            end
        end 
    end 

    def view
        return @music_arr.join(', ')
    end

end