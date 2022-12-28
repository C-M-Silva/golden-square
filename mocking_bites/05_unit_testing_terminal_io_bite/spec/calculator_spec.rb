require 'calculator'

RSpec.describe InteractiveCalculator do 
    it 'test' do 
        terminal = double :terminal
        expect(terminal).to receive(:puts).with ('Enter the first number: ')
        expect(terminal).to receive(:gets).and_return('5')
        expect(terminal).to receive(:puts).with ('Enter the second number: ')
        expect(terminal).to receive(:gets).and_return('5')
        expect(terminal).to receive(:puts).with ('5 + 5 = 10')

        adder = InteractiveCalculator.new(terminal)
        adder.add_meth
    end
end