class GrammarStats
    def initialize
        @checked = 0
    end
  
    def check(text) # text is a string
        if text[0] == text[0].upcase && %w(. ! ?).include?(text[-1])
            @checked = 100
            return true 
        elsif text[0] == text[0].upcase || %w(. ! ?).include?(text[-1])
            @checked = 50
            return false
        else 
            return false
        end
    end
  
    def percentage_good
        return "#{@checked}%"
    end
end