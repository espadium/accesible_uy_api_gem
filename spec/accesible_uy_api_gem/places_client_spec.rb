require 'spec_helper'
describe '.places' do
  it 'Should return a parsed Json Hash' do
    expect(AccesibleUyApiGem.client.near_places('1','2')).to be_empty
  end
end
