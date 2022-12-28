require "reading_time"

RSpec.describe "reading_time" do 
    it "when 100 words are presented results in 30 seconds of reading time" do 
        result = reading_time('one_hundred ' * 100)
        expect(result).to eq "will tak roughly 30 seconds to read"
    end
    it "when 200 words are presented results in 30 seconds of reading time" do 
        result = reading_time('two_hundred ' * 200)
        expect(result).to eq "will tak roughly 1 min to read"
    end
    it "when 200 words are presented results in 30 seconds of reading time" do 
        result = reading_time('three_hundred ' * 300)
        expect(result).to eq "will tak roughly 1.3 min to read"
    end
    it "when 200 words are presented results in 30 seconds of reading time" do 
        result = reading_time('four_hundred ' * 400)
        expect(result).to eq "will tak roughly 2 min to read"
    end
end


