Then(/^I press on Find USPS locations link$/) do
  home_page.find_usps_locations.click
end

And(/^I land on Find USPS locations page$/) do
  expect(usps.find_locations_page.page_header.text).to be == "Find Location"
end

Then(/^I type "([^"]*)" to zip code field$/) do |zip_code|
  usps.find_locations_page.zip_code_field.send_keys zip_code
end


And(/^I press on Search button on Find locations page$/) do
  usps.find_locations_page.search_button.click
end


Then(/^I should see Find locations search result$/) do
  expect(usps.find_locations_page.search_results.size).to be < 0
end