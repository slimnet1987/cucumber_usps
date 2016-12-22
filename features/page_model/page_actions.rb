class PageActions

  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to self.path
  end

end