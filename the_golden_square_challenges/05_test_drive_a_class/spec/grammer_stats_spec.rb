require 'grammer_stats'

RSpec.describe GrammarStats  do 
    context "check if the start of the text starts with a captial and end of text has puncuation" do 
        it "returns true if condtions are met" do 
            text = GrammarStats.new()
            result = text.check('Hello how are you.')
            expect(result).to eq true
        end
        it "returns false if condtions are met" do 
            text = GrammarStats.new()
            result = text.check('hello how are you?')
            expect(result).to eq false
        end
    end
    describe "Check to see if percentage module provides correct amount" do
        context "if both a captial and punction is used within the string" do 
            it "return 100%" do 
                text = GrammarStats.new()
                text.check('Hello how are you?')
                expect(text.percentage_good).to eq '100%'
            end
        end
        context "if a captial or a punction is used within the string although one is missing" do 
            it "return 50%" do 
                text = GrammarStats.new()
                text.check('hello, how are you?')
                expect(text.percentage_good).to eq '50%'
            end
        end
        context "if a captial or a punction are both missing" do 
            it "return 0%" do 
                text = GrammarStats.new()
                text.check('hello, how are you')
                expect(text.percentage_good).to eq '0%'
            end
        end
    end
end
