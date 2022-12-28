require 'counter'

RSpec.describe Counter do 
    it "take one parameter and adds to the count variable" do 
        test = Counter.new
        test.add(5)
        test_result = test.report()
        expect(test_result).to eq "Counted to 5 so far."
    end

    it "take one parameter and adds to the count variable" do 
        test_1 = Counter.new
        test_1.add(10)
        test_result_1 = test_1.report()
        expect(test_result_1).to eq "Counted to 10 so far."
    end
end