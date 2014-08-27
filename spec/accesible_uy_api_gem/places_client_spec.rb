require 'spec_helper'
describe '.places' do
  it 'Should return a parsed Json Hash' do
    expect(AccesibleUyApiGem.client.near('1','2')).to be_empty
  end
end
