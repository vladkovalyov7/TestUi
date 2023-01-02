# frozen_string_literal: true
 require_relative '../main_page'
module Allo
 class ListSectionBicyclesAndAccessories<MainPage
  element :choose_section_bicycles_button, "a[title='Велосипеди']"
  element :leave_feedback_button, "use[href='/_nuxt/850fb97c1b35b9376c9e3f397a7baa9e.svg#i-comment'][1]"

  def click_choose_section_bicycles
   choose_section_bicycles_button.click
  end

  def click_leave_feedback
   leave_feedback_button.click
  end

 end
end

