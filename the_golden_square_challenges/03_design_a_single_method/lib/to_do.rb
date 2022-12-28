def to_do(text)
    # sets the text argument to upercase to account for any cap changes within the string. splits the string into an array and uses the 
    # include method to check if there is a #TODO string inside.
    if text.upcase.split.include?('#TODO')
        # returns text if #TODO is included
        return text
    else 
        # Else returns all up to date. 
        return "All up to date"
    end
end
