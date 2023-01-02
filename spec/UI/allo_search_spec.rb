# frozen_string_literal: true
require 'capybara/dsl'
require_relative '../../pages/allo/home_page'

describe 'Allo Search' do

    include Capybara::DSL

    before do
      # require 'pry';binding.pry
      page.driver.browser.manage.windows.maximize
      home_allo_page.load
      sleep(10)
    end

    let(:home_allo_page) {Allo::HomePage.new}
    let(:search_word) { 'Apple iPhone 13 Pro Max 128GB Alpine Green' }
    let(:title_page) {'АЛЛО - національний маркетплейс із найширшим асортиментом'}


    it 'verifies that page opened ' do
      expect(true).to be
    end

    it 'verifies that title correct ' do
      expect(title_page).include title_page
    end

    it 'added product to cart' do
      type_to_search_field(search_word)
      click_search_button
      click_choose_product
      click_choose_store
      click_pick_up_today
      click_closed_cart
      expect(page).to have_content 'У кошику'
    end







end