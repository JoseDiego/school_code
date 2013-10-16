require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Inicio page" do
    before { visit root_path }

    it { should have_content('School of Code') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Inicio') }
  end

  describe "Ayuda page" do
    before { visit ayuda_path }

    it { should have_content('Ayuda') }
    it { should have_title(full_title('Ayuda')) }
  end

  describe "Nosotros page" do
    before { visit nosotros_path }

    it { should have_content('Nosotros') }
    it { should have_title(full_title('Nosotros')) }
  end

  describe "Contacto page" do
    before { visit contacto_path }

    it { should have_content('Contacto') }
    it { should have_title(full_title('Contacto')) }
  end
end