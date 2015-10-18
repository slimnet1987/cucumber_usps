class HomePage < PageActions

  def path
    "http://www.usps.com"
  end

  def login_button
    @browser.find_element(:id, "anchor-login")
  end

  def find_usps_locations
    @browser.find_element(:css, "a.quick-tools-solo--link.quick-tools-solo--locate")
  end

end