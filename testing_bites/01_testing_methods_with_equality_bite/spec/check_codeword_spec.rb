require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "returns 'WRONG!' string if incorrect codeword provided" do
        wrong_test = check_codeword('plane')
        expect(wrong_test).to eq "WRONG!"
    end

    it "returns 'Correct! come in.' string when correct codeword provided " do
        correct_test = check_codeword('horse')
        expect(correct_test).to eq "Correct! Come in."
    end

    it "returns 'Close, but nope.' when first char is 'h' " do
        first_test = check_codeword('house')
        expect(first_test).to eq "Close, but nope."
    end

    it "returns 'Close, but nope.' when first char is 'h' " do
        last_test = check_codeword('house')
        expect(last_test).to eq "Close, but nope."
    end

end

