require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'School of Code'" do
      visit '/static_pages/home'
      expect(page).to have_content('School of Code')
    end
  end

  describe "Help page" do

    it "should have the content 'Ayuda'" do
      visit '/static_pages/help'
      expect(page).to have_content('Ayuda')
    end
  end

  describe "About page" do

    it "should have the content 'Nosotros'" do
      visit '/static_pages/about'
      expect(page).to have_content('Nosotros')
    end
  end
end