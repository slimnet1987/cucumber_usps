class FindZipCodePage < PageActions

  def path
    "https://tools.usps.com/go/ZipLookupAction_input"
  end


  def select_state state
    state_dropdown.click
    state_list = @browser.find_element(:css, "ul.select-ul").find_elements(:tag_name, "a")

    state_list.find {|element| element.text == state}.click
    # state_list.each do |element|
    #   if element.text == state
    #     element.click
    #    break
    #    end
    # end
  end
  

  def collect_zip_code
    zip_array = []
    table_result.each {|result| zip_array << result.find_element(:css, "span.zip").text}
  end

end
