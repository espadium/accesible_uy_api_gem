require 'spec_helper'

describe 'configuration' do
  describe '.secret_key' do
    it 'should be nil by default' do
      expect(AccesibleUyApiGem.secret_key).to be(nil)
    end
  end

  describe '.configure' do
    before do
      AccesibleUyApiGem.configure do |conf|
        conf.secret_key = 'MY_SECRET_KEY'
        conf.public_key = 'MY_PUBLIC_KEY'
      end
    end

    it 'should set the configuration keys' do
      expect(AccesibleUyApiGem.secret_key).to match('MY_SECRET_KEY')
      expect(AccesibleUyApiGem.public_key).to match('MY_PUBLIC_KEY')
    end

    it 'should set default url and version' do
      expect(AccesibleUyApiGem.version).to match('v1')
      expect(AccesibleUyApiGem.base_url).to match('')
    end
  end
end
