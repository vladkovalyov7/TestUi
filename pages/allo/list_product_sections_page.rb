# frozen_string_literal: true
require_relative '../main_page'
module Allo
  class ListProductSectionsPage<MainPage
    element :choose_section_bicycles_and_accessories_button, "a[title='Велотовари та аксесуари']"

    def click_choose_section_bicycles_and_accessories
      choose_section_bicycles_and_accessories_button.click
    end

  end
end
