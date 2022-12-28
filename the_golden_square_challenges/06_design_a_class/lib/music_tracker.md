1. Describe the Problem

User wants to keep track of songs they have listened too, the class should have a method that stores songs into an array and return it as a string.  

2. Design the Class Interface

``` ruby 

class MUSIC_TRACKER
    def Initilize
    # define an array which will store the songs we have listened too
    @music_arr = []
    end 

    def add(song)
    # this method will handle the adding of new music into the list of music listened too.
    @music_arr << song 
    end 

    def view
    # this method will return the music we have listened too. 
    return @music_arr.to_s
    end 

```
3. Create Examples as Tests

# if the contents of the string is empty, return an error message.
song = MUSIC_TRACKER.new
song.add('') 
task.view =====> 'Please enter a song'

# input one song, only returns one song
song = MUSIC_TRACKER.new
song.add('gyrofield - Retinues') 
task.view =====> 'gyrofield - Retinues'

# input more songs, return the songs as a string.
song = MUSIC_TRACKER.new
song.add('gyrofield - Retinues') 
task.view =====> 'gyrofield - Retinues'

# if we input the same song twice, we only want to return it once. 
song = MUSIC_TRACKER.new
song.add('gyrofield - Retinues')
song.add('gyrofield - Retinues')  
task.view =====> 'gyrofield - Retinues'
