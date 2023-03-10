require 'json'
require 'net/http'

class CatFacts
    def initialize(request)
        @requester = request
    end

    def provide
        return "Cat fact: #{get_cat_fact["fact"]}"
    end

    private

    def get_cat_fact
        text_response = @requester.get(URI("https://catfact.ninja/fact"))
        return JSON.parse(text_response)
    end
end

cats = CatFacts.new(Net::HTTP)
p cats.provide