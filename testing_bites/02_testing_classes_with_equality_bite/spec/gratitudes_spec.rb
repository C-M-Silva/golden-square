require 'gratitudes'

RSpec.describe Gratitudes do
    it 'initilizes an object adds to @gratitudes array' do 
        grad = Gratitudes.new()
        grad.add('good health, good times')
        result = grad.format()
        expect(result).to eq 'Be grateful for: good health, good times'
    end
end 