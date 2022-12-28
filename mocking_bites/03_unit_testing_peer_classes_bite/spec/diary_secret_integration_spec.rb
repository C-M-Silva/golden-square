require 'diary'
require 'secret_diary'

RSpec.describe 'integration' do 
    it 'returns the contents of the diary' do 
        diary = Diary.new('hello')
        secret_diary = SecretDiary.new(diary)
        expect(secret_diary.read).to eq 'hello'
    end
    it 'returns error message if content is locked' do 
        diary = Diary.new('hello')
        secret_diary = SecretDiary.new(diary)
        secret_diary.lock
        expect(secret_diary.read).to eq 'Go away!'
    end
    it 'returns error message if content is locked' do 
        diary = Diary.new('hello')
        secret_diary = SecretDiary.new(diary)
        secret_diary.lock
        secret_diary.unlock
        expect(secret_diary.read).to eq 'hello'
    end
end