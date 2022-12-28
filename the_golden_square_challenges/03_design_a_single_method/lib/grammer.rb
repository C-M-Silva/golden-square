def grammer(text)
    if ['?','.','!'].include?(text[-1]) && text[0] == text[0].upcase
        return true
    else 
        false
    end
end 