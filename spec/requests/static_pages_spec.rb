require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Turnip'" do
      visit '/static_pages/home'
      page.should have_content('Turnip')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Turnip | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Turnip | About")
    end
  end
end