# frozen_string_literal: true
require_relative '../main_page'
module Allo
  class HomePage<MainPage
    set_url 'https://allo.ua/'

    element :search_field, "input[id='search-form__input']"
    element :search_button, "button[type='submit']"
    element :sport_and_health_button, "a[href='https://allo.ua/ua/sport-i-zdorov-e/'][class='mm__a']"



    def type_to_search_field(text)
      search_field.set(text)
    end

    def click_search_button
      search_button.click
    end

    def click_sport_and_health
      sport_and_health_button.click
    end

  end
end
