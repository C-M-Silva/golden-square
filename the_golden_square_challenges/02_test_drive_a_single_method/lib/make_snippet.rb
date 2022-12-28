def make_snippet(words)
    if words.split.length > 5
        return "#{words.split[0..4].join(' ')}..."
    else 
        return words
    end 
end