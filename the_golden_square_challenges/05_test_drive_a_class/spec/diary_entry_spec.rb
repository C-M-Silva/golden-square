require 'diary_entry'

RSpec.describe DiaryEntry do 
    it 'contructs' do
        diary_entry = DiaryEntry.new('my_title', 'my_contents')
        expect(diary_entry.title).to eq 'my_title'
        expect(diary_entry.contents).to eq 'my_contents'
    end
    
    describe "#count_words" do 
         it 'takes a string of words and counts the number of words in contents' do 
            diary_entry = DiaryEntry.new('my_title', 'one two three')
            expect(diary_entry.count_words).to eq 3
         end
    end
    describe "#reading time" do 
        context "given a wpm of some sensible number (200)" do
            it "returns the number of mins it takes to read contents" do 
                diary_entry = DiaryEntry.new('my_title', "one " * 550)
                expect(diary_entry.reading_time(200)).to eq 3
            end
        end
    end

    describe "#reading_chunk" do 
        context "with a text readable within the given minitues" do
            it "returns the full contents" do 
                diary_entry = DiaryEntry.new('my_title', 'one two three')
                result = diary_entry.reading_chunk(200, 1)
                expect(result).to eq "one two three"
            end
        end

        context "with a contents unreadable within the time" do
            it "returns the readable chunk" do 
                diary_entry = DiaryEntry.new('my_title', 'one two three')
                result = diary_entry.reading_chunk(2, 1)
                expect(result).to eq "one two"
            end
        end
        it "returns the next chunck, next time we are asked" do
            diary_entry = DiaryEntry.new('my_title', 'one two three')
            diary_entry.reading_chunk(2, 1)
            result = diary_entry.reading_chunk(2,1)
            expect(result).to eq "three"
        end
        it "restarts after reading the whole contents" do
            diary_entry = DiaryEntry.new('my_title', 'one two three')
            diary_entry.reading_chunk(2, 1)
            diary_entry.reading_chunk(2, 1)
            result = diary_entry.reading_chunk(2,1)
            expect(result).to eq "one two"
        end
    end
end