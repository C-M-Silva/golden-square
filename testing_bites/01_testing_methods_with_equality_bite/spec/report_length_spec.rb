require 'report_length'

RSpec.describe "checks length method" do 
    it "checks the length of string" do 
        result = report_length('hello')
        expect(result).to eq "This string was 5 characters long."
    end
end
