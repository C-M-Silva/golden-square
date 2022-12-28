require "to_do"

RSpec.describe "to_do" do 
    context "When entering a string with #TODO " do
        it "returns string" do 
            result = to_do('Blah blah #TODO')
            expect(result).to eq 'Blah blah #TODO'
        end
    end
    context "When entering a string without #TODO " do
        it "returns string" do 
            result = to_do('Blah Blah')
            expect(result).to eq "All up to date"
        end
    end
    context "When entering a string with in different cases with and without the #TODO " do
        it "returns string with lowercase #todo" do 
            result = to_do('Blah #todo')
            expect(result).to eq "Blah #todo"
        end
        it "returns true, despite half the #TODO string being lowercase" do 
            result = to_do('Blah #toDO')
            expect(result).to eq "Blah #toDO"
        end
    end
end
