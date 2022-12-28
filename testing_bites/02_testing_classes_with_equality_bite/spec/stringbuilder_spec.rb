require 'stringbuilder'

RSpec.describe StringBuilder do 
    it "initialize a new object, use add method and return string" do 
        string = StringBuilder.new
        string.add('Hello')
        output = string.output
        expect(output).to eq 'Hello'
    end
    it "initialize a new object, use add method and return string" do 
        string = StringBuilder.new
        string.add('Hello')
        output_size = string.size
        expect(output_size).to eq 5
    end
end
