require "present"

RSpec.describe Present do 
    context "check if present has been unwrapped" do
        it "fails if no contents provided" do
            contents = Present.new()
            expect {contents.unwrap}.to raise_error "No contents have been wrapped."
        end
    end
    context "checks to see if present has already been wrapped" do 
        it "fails if value has already been input" do 
            contents = Present.new()
            contents.wrap("socks")
            expect { contents.wrap("slippers") }.to raise_error "A contents has already been wrapped."
        end
    end
    context "wrap a present and return the unwrapped present" do 
        it "output the value" do 
            contents = Present.new()
            contents.wrap("socks")
            contents_result = contents.unwrap
            expect(contents_result).to eq "socks"
        end
    end

end