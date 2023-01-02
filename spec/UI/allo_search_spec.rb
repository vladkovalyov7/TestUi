# frozen_string_literal: true
require 'capybara/dsl'
require_relative '../../pages/allo/home_page'

require_relative '../../pages/allo/product_page'
require_relative '../../pages/allo/list_product_page'


describe 'Allo Search' do

    include Capybara::DSL

    before do
      page.driver.browser.manage.window.maximize
      home_page.load
    end

    let(:home_page) {Allo::HomePage.new}
    it 'verifies that page opened ' do
      expect(true).to be
    end

    let(:title_page) { 'АЛЛО - національний маркетплейс із найширшим асортиментом' }
    it 'verifies that title correct ' do
      expect(page.title).to include title_page
    end

    let(:list_product_page) { Allo::ListProductPage.new }
    let(:product_page) { Allo::ProductPage.new }
    let(:search_word) { 'Велосипед Titan 26" Favorite Tracker 17" black-green-white (2021)' }

    it 'added product to cart' do
        # require 'pry';binding.pry
       home_page.type_to_search_field(search_word)
       home_page.click_search_button
       list_product_page.click_choose_product
       product_page.click_buy_product
       expect(page).to have_content search_word
    end


    xit 'added product to cart' do
      require 'pry';binding.pry
      type_to_search_field(search_word)
      click_search_button
      click_sport_and_health
      click_choose_product
      click_choose_section_bicycles_and_accessories
      click_choose_store
      click_pick_up_today
      click_closed_cart
      expect(page).to have_content 'У кошику'
    end
end









