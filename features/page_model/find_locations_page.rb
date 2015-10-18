class FindLocationsPage < PageActions

  def page_header
    @browser.find_element(:id, "polo-index-title").find_element(:tag_name, "h1")
  end

  def zip_code_field
    @browser.find_element(:id, "tCityStateZip")
  end

  def search_button
    @browser.find_element(:id, "bSearch")
  end

  def search_results
    @browser.find_element(:css, "tbody.resultRows").find_elements(:css, "tr.result")
  end




end