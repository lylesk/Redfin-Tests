require 'rubygems'
require 'faraday'
require 'rspec'
require 'webmock/rspec'
require 'net/http'


describe ZillowAPI do
	context 'The results of hitting the API'
	it "should match the address entered in the search" do
		before do
		url = 'https://www.zillow.com/webservice/GetSearchResults.htm'
		end
		
	it "should return a 200 response when searching for a specific address"
	conn = Faraday.new(url: url) do |faraday|
		faraday.adapter Faraday.default_adapter
		faraday.response :json
		conn.get do |req|
		req.params['zws-id'] ='zws-id=X1-ZWz1gi0bozmebv_9d4gz'
		req.params['address'] = '1603 Southeast 29th Avenue'
		req.params['citystatezip'] = 'Portland'
		response = conn.get
		expect(response).to eq 200
		end
		end
	
	it "should return the correct address in the JSON response"
		expect(response).to eq ('1603 Southeast 29th Avenue')
		end
	end

###response.body (data['content'].to eq ('1603 Southeast 29th Avenue'))

