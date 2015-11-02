Then(/^I press on Find USPS locations link$/) do
  usps.home_page.find_usps_locations.click
end

And(/^I land on Find USPS locations page$/) do
  expect(usps.find_locations_page.page_header.text).to be == "Find Locations"
end

Then(/^I type "([^"]*)" to zip code field$/) do |zip_code|
  usps.find_locations_page.zip_code_field.send_keys zip_code
end


And(/^I press on Search button on Find locations page$/) do
  usps.find_locations_page.search_button.click
end


Then(/^I should see Find locations search result$/) do
  expect(usps.find_locations_page.search_results.size).to be > 0
end

Given(/^I navigate to USPS find locations page$/) do
  usps.find_locations_page.visit
end

Then(/^I will find element by tag and text$/) do
  usps.find_locations_page.find_by_tag_and_text
end


And(/^I will find element by link text$/) do
  usps.find_locations_page.find_by_link_text
end


Then(/^I wait for FAQs link$/) do
  usps.find_locations_page.wait_for_faq
end


Then(/^I scroll page all way down$/) do
  usps.find_locations_page.scroll_all_way_down
end


And(/^I resize my browser to (\d+) by (\d+)$/) do |x,y|
  usps.find_locations_page.resize_browser(x,y)
end










