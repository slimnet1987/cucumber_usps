class PageActions

  def initialize browser
    @brower = browser
  end

  def visit
    @browser.navigate.to build_urI
  end

  def build_url
    self.path.gsub!("usps.com", get_env)
  end

end




