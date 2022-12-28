require 'server'

RSpec.describe TimeError do 
    it 'it will return time difference' do 
        fake_request = double :fake_request
        allow(fake_request).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"86.20.40.145","datetime":"2022-12-16T15:06:43.136932+00:00","day_of_week":5,"day_of_year":350,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1671203203,"utc_datetime":"2022-12-16T15:06:43.136932+00:00","utc_offset":"+00:00","week_number":50}')
        time = Time.new(2022, 12, 16, 15, 06, 43)
        result = TimeError.new(fake_request)
        expect(result.error(time)).to eq 0.136932
    end
end