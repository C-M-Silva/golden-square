# class uses method called check which takes one argument, password. 
# checks to see if the password is greater than or equal too 8
# returns true if it is greater than 8
# else returns fail message 

require "password_checker"

RSpec.describe PasswordChecker do 
    context "Checks to see if number is greater than 8" do
        it "returns true" do 
            password = PasswordChecker.new()
            expect(password.check("helloworld")).to eq true
        end
    end

    context "Checks to see if number is == 8" do
        it "returns true" do 
            password = PasswordChecker.new()
            expect(password.check("happycat")).to eq true
        end
    end
    
    context "Checks to see if number is < 8" do
        it "fails" do 
            password = PasswordChecker.new()
            expect {password.check("saddog")}.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end

