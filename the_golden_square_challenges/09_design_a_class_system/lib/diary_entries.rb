class Diary_Entries
    def initialize(diary_entry, tasks=['No todo list added'], contacts=['no contacts added'])
        @diary_entry = {'Diary Entry' => diary_entry, 'Tasks' => tasks, 'contacts' => contacts}
    end

    def view
        return @diary_entry
    end
end

    