require 'greet'

RSpec.describe "Greeter message" do
    it "takes one parameter name and returns it as a string 'hello @{name}'" do 
        result = greet('Cristiano')
        expect(result).to eq 'Hello, Cristiano!'
    end
end
