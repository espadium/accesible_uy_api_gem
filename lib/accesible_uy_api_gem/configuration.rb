module AccesibleUyApiGem
  module Configuration
    VALID_CONFIG_KEYS = %i{ public_key secret_key base_url version }.freeze

    # Build accessor methods for every config options so we can do this, for example:
    attr_accessor *VALID_CONFIG_KEYS

    # Make sure we have the default values set when we get 'extended'
    def self.extended(base)
      base.reset
    end

    def reset
      self.public_key = nil
      self.secret_key = nil
      self.version    = 'v1'
      self.base_url   = 'http://accesible-uy-api.herokuapp.com/api/'
    end

    def configure
      yield self
    end

  end # Configuration
end
