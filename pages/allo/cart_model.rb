# frozen_string_literal: true
require_relative '../main_page'

module Allo
  class Cart<MainPage
    element :closed_cart_button, "use[href='/_nuxt/172935c1228d249e5a6bbd160cc6558a.svg#i-close'][1]"

    def click_closed_cart
      closed_cart_button.click
    end

  end
end

