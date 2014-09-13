require "accesible_uy_api_gem/version"
require "accesible_uy_api_gem/configuration"
require "accesible_uy_api_gem/client"

module AccesibleUyApiGem
  extend Configuration

  def self.client
    @client ||= AccesibleUyApiGem::Client.new()
  end

  def self.api_path
    self.base_url + self.version + '/'
  end
end
