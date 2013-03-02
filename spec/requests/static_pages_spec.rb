require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Turnip') }
    it { should have_selector('title', text: 'Turnip') }    
    it { should_not have_selector('title', text: '| Home') }

  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: "Turnip | About") }  
  
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: "Turnip | Contact") }  

  end
end