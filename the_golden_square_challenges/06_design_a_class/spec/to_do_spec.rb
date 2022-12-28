require 'todo_class'

RSpec.describe TODO do 
    context "Stores user todo text and stores it in array" do 
        it "returns empty string" do 
            text = TODO.new
            list = text.add(' ')
            expect(text.view).to eq ' '
        end
        it "returns multiple strings" do 
            text = TODO.new
            text.add('take out the rubbish') 
            text.add('phone the doctor')
            expect(text.view).to eq 'take out the rubbish, phone the doctor'
        end
    end
    context "if user inputs same string twice, only return it once" do 
        it "returns only a single instance of the string" do 
            text = TODO.new
            text.add('take out the rubbish') 
            text.add('take out the rubbish') 
            expect(text.view).to eq 'take out the rubbish'
        end
        it "returns only the single instance strings" do 
            text = TODO.new
            text.add('take out the rubbish') 
            text.add('walk the dog') 
            text.add('take out the rubbish') 
            expect(text.view).to eq 'take out the rubbish, walk the dog'
        end
    end
    context "removes string when remove() is called" do 
        it "returns todo list as string with removed element" do 
            text = TODO.new
            text.add('take out the rubbish') 
            text.remove('take out the rubbish')
            expect(text.view).to eq ''
        end
        it "return reminder if element has already been taken out" do 
            text = TODO.new
            text.add('take out the rubbish') 
            text.remove('take out the rubbish')
            expect {text.remove('take out the rubbish')}.to raise_error "task has already been removed"
        end
    end
end
