











class PageActions

  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    self.path.gsub!("usps.com", get_env)
  end

  def scroll_all_way_down
    @browser.find_elements(:tag_name, "a").last.location_once_scrolled_into_view
  end

  def resize_browser(x,y)
    @browser.manage.window.resize_to(x,y)
    # @browser.manage.window.maximize
  end

end





