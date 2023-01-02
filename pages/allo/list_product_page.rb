# frozen_string_literal: true

module Allo
  class ListProductPage<MainPage


    element :buy_product_button, "div[class='product-card__buy-box']", match:first
    element :choose_product_button, "a[href='https://allo.ua/ua/velosipedy/26-favorite-tracker-17-black-green-white-2021.html']", match:first

    def click_buy_product
      buy_product_button.click
    end

    def click_choose_product
      choose_product_button.click
    end

  end
end
