require 'todo'

RSpec.describe TODO do
    context 'user wants to keep a todo list' do 
        it 'input one string and returns string which is stored in array' do 
            todo = TODO.new(['get presents', 'pay parking fine'])
            expect(todo.view).to eq ['get presents', 'pay parking fine']
        end
    end
end
