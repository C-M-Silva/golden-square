require 'busy_diary_day'

RSpec.describe Busy_Diary_Day do
    context 'check a list of diary entries' do
        it 'returns the time it will take to read the diaries relative to the users reading speed' do
            entries = Busy_Diary_Day.new(['five ' * 5, 'ten ' * 10])
            expect(entries.reading_time(5)).to eq [1, 2]
        end
    end
    describe 'user inputs the time they have to read' do
        context 'returns all the appropriate diary entries that can be read in given time frame' do
            it '5 wpm would return an array with [1 (min), 2(min)], with one word per min, user should only be able to read first index of array' do
                entries = Busy_Diary_Day.new(['five ' * 5, 'ten ' * 10])
                reading_time = entries.reading_time(5)
                expect(entries.diary_entries_in_time(1)).to eq ['five ' * 5]
            end
            it '5 wpm would return an array with [1 (min), 2(min)], with one word per min, user should only be able to read first index of array' do
                entries = Busy_Diary_Day.new(['five ' * 5, 'ten ' * 10])
                reading_time = entries.reading_time(5)
                expect(entries.diary_entries_in_time(2)).to eq ['five ' * 5, 'ten ' * 10]
            end
        end
    end
end
