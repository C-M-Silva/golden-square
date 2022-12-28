class TodoList
    def initialize
        @todo_list = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
      @todo_list << todo
    end
  
    def incomplete
        return @todo_list.reject do |task|
            task.done?
        end
    end
  
    def complete
        return @todo_list.select do |task|
            task.done?
        end
    end
  
    def give_up!
      # Marks all todos as complete
      return @todo_list
    end
  end
