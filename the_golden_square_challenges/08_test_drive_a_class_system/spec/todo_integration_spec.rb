require 'todo_list'
require 'todo'

RSpec.describe TodoList do 
    context 'adds to tasks to the todo list' do 
        it 'marks the 1st task as completed, returns task 2' do 
            todo_list = TodoList.new
            todo_task_1 = Todo.new('some task 1')
            todo_task_2 = Todo.new('some task 2')
            todo_list.add(todo_task_1)
            todo_list.add(todo_task_2)
            todo_task_1.mark_done!
            expect(todo_list.incomplete).to eq [todo_task_2]
        end
        it 'marks the 1st task as completed, returns task 2' do 
            todo_list = TodoList.new
            todo_task_1 = Todo.new('some task 1')
            todo_task_2 = Todo.new('some task 2')
            todo_list.add(todo_task_1)
            todo_list.add(todo_task_2)
            todo_task_2.mark_done!
            expect(todo_list.incomplete).to eq [todo_task_1]
        end
        it 'marks the 1st task as completed, returns task 2' do 
            todo_list = TodoList.new
            todo_task_1 = Todo.new('some task 1')
            todo_task_2 = Todo.new('some task 2')
            todo_list.add(todo_task_1)
            todo_list.add(todo_task_2)
            todo_task_1.mark_done!
            todo_task_2.mark_done!
            expect(todo_list.complete).to eq [todo_task_1, todo_task_2]
        end
        it 'marks the 1st task as completed, returns task 2' do 
            todo_list = TodoList.new
            todo_task_1 = Todo.new('some task 1')
            todo_task_2 = Todo.new('some task 2')
            todo_list.add(todo_task_1)
            todo_list.add(todo_task_2)
            expect(todo_list.give_up!).to eq [todo_task_1, todo_task_2]
        end
    end
end