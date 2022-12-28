1. Describe the Problem

User wants to keep track of tasks, program should store a todo list and return it. User wants to be able to mark off tasks 
once they have been achieved, remove them from list.

2. Design the Class Interface

``` ruby 

class TODO
    def Initilize
    # define an array which will hold our to do list
    @todo_arr = []
    end 

    def add(text)
    # we want to add new tasks to our list
    @todo_arr << text
    end 
    
    def remove(text)
    # when called we want to remove the element from the array.
    @todo_arr.delete()
    end 

    def view
    # we want to show the user the tasks as a string
    return @todo_arr.to_s

```
3. Create Examples as Tests

task = TODO.new
task.add('') 
task.view =====> ''

task = TODO.new
task.add('take out the rubbish') 
task.add('phone the doctor')
task.view =====> 'take out the rubbish, phone the doctor')

task = TODO.new
task.add('take out the rubbish') 
task.add('phone the doctor')
task.view =====> 'take out the rubbish, phone the doctor')

task = TODO.new
task.add('take out the rubbish') 
task.add('take out the rubbish') 
task.view =====> 'take out the rubbish')


4. Implement the Behaviour

