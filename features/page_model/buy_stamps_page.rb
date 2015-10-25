class BuyStampsPage < PageActions

  def path
    "https://store.usps.com/store/browse/category.jsp?categoryId=buy-stamps"
  end

  def product_by_index(index)
    elements=@browser.find_element(:css, "div.product-wrap.three-product-col").find_elements(:tag_name, "article")
    elements[index.to_i - 1].find_element(:css, "img.prodThumb")
  end

  def add_to_cart_button
    @browser.find_element(:id, "addToCartBtn")
  end

  def products_in_cart
    @browser.find_element(:id, "shopping-cart-panel-quantity")
  end


end













