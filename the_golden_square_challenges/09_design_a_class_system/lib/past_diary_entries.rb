class Past_Diary_Entries
    def initialize
        @diary_entries = []
        @Tasks = []
        @contacts = []

    end

    def add_entries(diary) 
        @diary_entries << diary['Diary Entry']
        @Tasks << diary['Tasks'].join(', ')
        @contacts << diary['Contacts']
    end 

    def view_diary_entries
        return @diary_entries.join(', ') 
    end

    def view_diary_todo_list
        return @Tasks.join(', ')
    end
end