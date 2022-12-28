class TODO
    def initialize
        @todo_arr = []
    end 

    def add(text)
        unless @todo_arr.include?(text)
            @todo_arr << text 
        end
    end

    def remove(text)
        if @todo_arr.include?(text)
            @todo_arr.delete(text)
        else 
            fail "task has already been removed"
        end
    end

    def view
        return @todo_arr.join(', ')
    end
end