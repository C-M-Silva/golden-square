class Todo
    def initialize(task) # task is a string
        @todo = task
        @done = false
    end
  
    def task
        return @todo
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
      @done = true
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
      return @done
    end
  end