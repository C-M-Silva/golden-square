class Busy_Diary_Day
    def initialize(diary_entry)
        # variable below will be an array passed on by the past_diary_entry class
        @diary_entry = diary_entry
        @dairy_reading_speed = []
        @resulting_diary_entries = []
    end

    def reading_time(wpm)
        @diary_entry.each {|entry| @dairy_reading_speed << ((entry.split.size) / wpm.to_f).ceil }
        return @dairy_reading_speed
    end

    def diary_entries_in_time(min)
        @dairy_reading_speed.each_with_index do |entry, index|
            if entry <= min
                @resulting_diary_entries << @diary_entry[index]
            end
        end
        return @resulting_diary_entries
    end 

end

    