require 'accesible_uy_api_gem/client/places'
require 'json'
require 'net/http'

module AccesibleUyApiGem
  class Client
    include AccesibleUyApiGem::Client::Places

    def initialize(options = {})
    end

    def get url
      uri = URI(AccesibleUyApiGem.api_path + url)
      res = Net::HTTP.get_response(uri)

      if res.code == '404'
        return {}
      end

      JSON.parse res.body
    end
  end
end
