require 'diary_entries'

RSpec.describe Diary_Entries do 
    context 'When user inputs a diary entry' do 
        it 'returns that entry' do 
            entry = Diary_Entries.new('just a test')
            expect(entry.view).to eq "Diary Entry"=>"just a test", "Tasks"=>["No todo list added"], "contacts"=>["no contacts added"]
        end
    end
end

