# frozen_string_literal: true
require_relative '../main_page'

module Allo
  class SelfDeliveryFromTheStore<MainPage
    element :choose_store_button, "span[class='stores-list__value'][1]"
    element :pick_up_today_button, "/html/body/div[4]/div/div/div[2]/div/div[2]/div[2]/div[2]/div/div[1]/div[2]/button"

    def click_choose_store
      choose_store_button.click
    end

    def click_pick_up_today
      pick_up_today.click
    end

  end
end
