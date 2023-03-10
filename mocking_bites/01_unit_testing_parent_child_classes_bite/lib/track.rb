class Track
    def initialize(title, artist) # title and artist are both strings
        @title = title
        @artist = artist
    end
  
    def matches?(keyword) # keyword is a string
      # Returns true if the keyword matches either the title or artist
      if @artist.split.include?(keyword) || @title.split.include?(keyword)
        return true 
      else 
        return false
      end
    end
end