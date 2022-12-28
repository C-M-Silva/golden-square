require 'todo'
require 'contacts'
require 'diary_entries'
require 'past_diary_entries'
require 'busy_diary_day'

RSpec.describe 'Diary integration' do 
    context 'testing the features from todo, contacts to diary entries' do 
        it 'returns the diary entry without the task and contact information included' do 
            entries = Diary_Entries.new('content')
            expect(entries.view).to eq "Diary Entry"=>"content", "Tasks"=>["No todo list added"], "contacts"=>["no contacts added"]
        end
 
        it 'returns the information in a hash table' do 
            task = TODO.new(['do food shop', 'go to the bank'])
            contact = Contacts.new(['3294234', '2341244'])
            entries = Diary_Entries.new('content', task.view, contact.view_contacts)
            expect(entries.view).to eq "Diary Entry"=>"content", "Tasks"=>["do food shop", "go to the bank"], "contacts"=>["3294234", "2341244"]
        end
    end
    describe 'testing the return features within the past_diary_entries class' do
        context 'checking return entries of daily diary entries' do 
            it 'returns the di' do 
                entry_1 = Diary_Entries.new('good day')
                entry_2 = Diary_Entries.new('bad day')
                entries_list = Past_Diary_Entries.new
                entries_list.add_entries(entry_1.view)
                entries_list.add_entries(entry_2.view)
                expect(entries_list.view_diary_entries).to eq 'good day, bad day'
            end
        end
        context 'return entries from the todo list' do 
            it 'returns todo list' do 
                entry_1 = Diary_Entries.new('good day', ['go to the bank', 'do a food shop'])
                entries_list = Past_Diary_Entries.new
                entries_list.add_entries(entry_1.view)
                result = entries_list.view_diary_todo_list
                expect(result).to eq 'go to the bank, do a food shop'
            end
            it 'returns todo list within two seperate diary entries' do 
                entry_1 = Diary_Entries.new('good day', ['go to the bank', 'do a food shop'])
                entry_2 = Diary_Entries.new('bad day', ['fix car tire', 'pay bill'])
                entries_list = Past_Diary_Entries.new
                entries_list.add_entries(entry_1.view)
                entries_list.add_entries(entry_2.view)
                result = entries_list.view_diary_todo_list
                expect(result).to eq 'go to the bank, do a food shop, fix car tire, pay bill'
            end
        end
    end
end

