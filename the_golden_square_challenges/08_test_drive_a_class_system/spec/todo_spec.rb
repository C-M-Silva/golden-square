require 'todo'

RSpec.describe Todo do 
    context 'This class will return a todo task and market it as done' do 
        it 'returns the task' do 
            some_task = Todo.new('Finish off this task')
            expect(some_task.task).to eq 'Finish off this task'
        end
        it 'markes the task as done and returns true' do 
            some_task = Todo.new('Finish off this task')
            some_task.mark_done!
            expect(some_task.done?).to eq true
        end
        it 'does not mark task as done and returns false' do 
            some_task = Todo.new('Finish off this task')
            expect(some_task.done?).to eq false
        end
    end
end