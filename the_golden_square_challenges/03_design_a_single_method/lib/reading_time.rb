def reading_time(words)
    if words.split.length <= 100 
        return "will tak roughly 30 seconds to read"
    elsif words.split.length <= 200
        return "will tak roughly 1 min to read"
    elsif words.split.length <= 300
        return "will tak roughly 1.3 min to read"
    elsif words.split.length <= 400
        return "will tak roughly 2 min to read"
    end
end 