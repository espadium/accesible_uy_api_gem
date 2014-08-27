module AccesibleUyApiGem
  module Configuration
    VALID_CONFIG_KEYS = %i{ public_key secret_key }.freeze

    # Build accessor methods for every config options so we can do this, for example:
    attr_accessor *VALID_CONFIG_KEYS

    # Make sure we have the default values set when we get 'extended'
    def self.extended(base)
      base.reset
    end

    def reset
      self.public_key = nil
      self.secret_key = nil
    end

    def configure
      yield self
    end

  end # Configuration
end
