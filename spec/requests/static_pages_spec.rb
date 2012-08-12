require 'spec_helper'

describe "Static pages" do

  describe "home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
        :text => "Gerald Fong's Blog")
    end


  end

  describe "help Page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
        :text => '| Help')
    end
  end

  describe "about Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
        :text => '| About')
    end
  end
end