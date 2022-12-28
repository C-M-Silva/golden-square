require 'diary'

RSpec.describe Diary do
    it 'returns contents of the diary' do 
        diary = Diary.new('hello')
        expect(diary.read).to eq 'hello'
    end
end
