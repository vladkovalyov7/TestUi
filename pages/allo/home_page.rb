# frozen_string_literal: true
require_relative '../main_page'

module Allo
  class HomePage<MainPage
    set_url 'https://allo.ua/'

    element :search_field, "input[id='search-form__input']"
    element :search_button, "button[disabled='disabled']"
    element :sport_and_health_button, "/html/body/div[1]/div/div/div[1]/div[1]/div[2]/div/div[9]/a/p"



    def type_to_search_field(text)
      search_field_element.set(text)
    end

    def click_search_button
      search_button_element.click
    end

    def click_sport_and_health
      sport_and_health_button.click
    end

  end
end
