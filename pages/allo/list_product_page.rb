# frozen_string_literal: true
require_relative '../main_page'

module Allo
  class ListProductPage<MainPage
    element :choose_product_button, "button[class='v-btn--tt']"

    def click_choose_product
      choose_product_button.click
    end

  end
end
