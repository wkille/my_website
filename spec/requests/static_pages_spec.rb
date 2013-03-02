require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Turnip'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Turnip')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "Turnip")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "Turnip | About")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', text: "Turnip | Contact")
    end
  end
end