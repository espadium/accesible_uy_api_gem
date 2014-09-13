require 'spec_helper'
describe '.places' do
  it 'Should return a parsed Json Hash' do
    AccesibleUyApiGem.client.stub(:get) { [] }
    expect(AccesibleUyApiGem.client.near_places('1','2')).to be_empty
  end

  it 'Should return places when there are places' do
    AccesibleUyApiGem.client.stub(:get) { [{"id"=>1, "name"=>"56335 Ebert Port", "address"=>nil, "author_id"=>1, "client_id"=>1, "created_at"=>"2014-09-13T05:31:30.682Z", "updated_at"=>"2014-09-13T05:31:30.682Z", "latitude"=>-65.831016464884, "longitude"=>-102.57702100667}, {"id"=>2, "name"=>"2121 Steve Well", "address"=>"Antarctica", "author_id"=>2, "client_id"=>2, "created_at"=>"2014-09-13T05:31:30.791Z", "updated_at"=>"2014-09-13T05:31:30.791Z", "latitude"=>-76.1677317464967, "longitude"=>-123.543294898756}] }
    expect(AccesibleUyApiGem.client.all_places).count.to be(2)
  end
end
