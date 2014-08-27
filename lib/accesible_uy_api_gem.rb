require "accesible_uy_api_gem/version"
require "accesible_uy_api_gem/configuration"
require "accesible_uy_api_gem/client"

module AccesibleUyApiGem
  extend Configuration

  def self.client
    @client ||= AccesibleUyApiGem::Client.new()
  end
end
