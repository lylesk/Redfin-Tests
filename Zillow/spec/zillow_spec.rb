require 'rubygems'
require 'faraday'
require 'rspec'
require 'webmock/rspec'
require 'net/http'
			
conn = Faraday.new(:url => 		'http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz1gi0bozmebv_9d4gz&address=1603+Southeast+29th+Avenue+&citystatezip=Portland%2C+OR') 
		#I wanted to use parameters and pass those into the query string instead of hardcoding the URL but unfortunately, I ran into difficulty successfully doing that. Below is what I left off with
		#conn.get do |req|
		#req.params['zws-id'] ='zws-id=X1-ZWz1gi0bozmebv_9d4gz'
		#req.params['address'] = '1603 Southeast 29th Avenue'
		#req.params['citystatezip'] = 'Portland, OR'
	
response = conn.get
apistatus = response.status
puts "Response status from API should be a 200. Response is a #{apistatus}"
puts "I was unable to figure out how to successfully parse the response form an XML and verify the address that was passed in."
