# Sample Tests Descriptions
The Redfin folder contains tests written in Ruby / Cucumber / Capybara that test the Login and Search features. Each test has its own folder. Although Redfin has it's own custom attributes on their elements, most of the find logic I implemented does not utilize them. They reuse the same attribute name for elements multiple times on a page, thus triggering an "ambiguous element" error and I was not able to succesfully determine how to get around that. 

The Zillow folder contains tests written using Ruby / Rspec / Faraday to test the response from the Zillow API when providing a specific address. I wanted to get fancy with the test and pass the parameters into the query string instead of hardcoding it but did not quite understand how to succesfully implement that. In addition, since the response is returned in an XML format instead of a JSON format, I was not able to determine how to succesfully parse the response and do a verification on that. 



