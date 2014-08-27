require 'accesible_uy_api_gem/client/places'
require 'json'

module AccesibleUyApiGem
  class Client
    include AccesibleUyApiGem::Client::Places

    def initialize(options = {})
    end

    def get url
      body_response = '{}'
      JSON.parse body_response
    end
  end
end
