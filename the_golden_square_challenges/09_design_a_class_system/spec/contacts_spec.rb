require 'contacts'

RSpec.describe Contacts do
    context 'allows user to enter a list of contacts' do 
        it 'return contacts when numbers are added' do 
            contacts = Contacts.new(['02149240', '12942014'])
            expect(contacts.view_contacts).to eq ['02149240', '12942014']
        end
    end
end