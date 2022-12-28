require 'past_diary_entries'

RSpec.describe Past_Diary_Entries do
    context 'checking if it returns an array' do
        it 'will return list of diary entries in array form' do 
            diary_entry = Past_Diary_Entries.new()
            diary_entry.add_entries({'Diary Entry' => 'content one', 'Tasks' => ['pay phone bill'], 'contacts' => 'nothing'})
            diary_entry.add_entries({'Diary Entry' => 'content two', 'Tasks' => ['do the food shop'], 'contacts' => 'nothing'})
            expect(diary_entry.view_diary_entries).to eq 'content one, content two'
        end
        it 'will return list of diary entries in array form' do 
            diary_entry = Past_Diary_Entries.new()
            diary_entry.add_entries({'Diary Entry' => 'content one', 'Tasks' => ['pay phone bill', 'do the food shop'], 'contacts' => 'nothing'})
            diary_entry.add_entries({'Diary Entry' => 'content one', 'Tasks' => ['go swimming', 'pick up mate'], 'contacts' => 'nothing'})
            expect(diary_entry.view_diary_todo_list).to eq "pay phone bill, do the food shop, go swimming, pick up mate"
        end
    end
end
