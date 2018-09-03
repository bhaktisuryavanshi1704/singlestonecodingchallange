# Bhakti Suryavanshi
# Created for Singlestone Coding challenge on 9/1/2018

require "selenium-webdriver"
require "rest-client"
require "json"
require "selenium-webdriver" 
require "base64"
require 'uri'
require 'net/http'

#TODO  - Set HTTP Public Key Pinning (HPKP) - Copy from Github->  a development platform. 

#import result Github url
url="https://github.com/ "

#driver variable for firefox webdriver
driver = Selenium::WebDriver.for :firefox

#Navigates to the homepage.
Given(/^We navigate to the Github WebSite$/) do
  driver.navigate.to " https://github.com/ "
end

#Search for capitalone/Hygieia in there
When(/^We search for the capitalone/Hygieia$/) do
  driver.find_element(:id, 's').send_keys("capitalone/Hygieia ")
  driver.find_element(:class ->' form-control header-search-input jump-to-field js-jump-to-field js-site-search-focus ').send_keys :enter

end

#The result for the search will be displayed
Then(/^The results for the search will be displayed $/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
    element = wait.until { driver.find_element(:href => " /capitalone/Hygieia") }
    #expect(element.text).to eq('Search Results for ‘capitalone/Hygieia’)
end
  # Find some more words criteria
And(/^Verify that the following 4 repo headers appear Commit, Branches, releases, contributors$/) do
driver.find_element(:href => " /capitalone/Hygieia").click("capitalone/Hygieia ")
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
#Find Text commits on the page 
Puts “Commits found” if  wait.until { driver.find_element(:class=> " commits") }
#Find Text branches on the page 
Puts “Branches found” if  wait.until { driver.find_element(:class=> " branches") }
#Find Text releases on the page 
Puts “releases found” if  wait.until { driver.find_element(:class=> " releases") }
#Find Text contributors on the page 
Puts “Contributors found” if  wait.until { driver.find_element(:class=> " contributors") }
end
end

# verify that the 4 headers have at least the following numbers of counts:  commits > 2000, branches > 4, releases >= 8, contributors > 50
And(/^Verify other search criteria$/) do
#Find commits>2000 
if driver.find_element(:class=>  "commits").to_i > 2000
puts “commits>2000”
 else puts “condition DOES NOT match”
end
#Find branches > 4
if driver.find_element(:class=>  "branches").to_i >  4
puts “branches > 4”
 else puts “condition DOES NOT match”
end
#Find releases >= 8
if driver.find_element(:class=>  "releases").to_i > = 8
puts “releases > = 8”
 else puts “condition DOES NOT match”
end
#Find contributors > 50
if driver.find_element(:class=>  "Contributors").to_i > 50
puts “contributors  > 50”
else puts “condition DOES NOT match”
end
driver.quit
  end
end

