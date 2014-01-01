require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help pages" do
    before { visit help_path }
  	it { should have_content('Help') }
    it { should have_title(full_title("Help")) }
  end

  describe "About pages" do
    before { visit about_path }
  	it { should have_content('About Us') }
  	it { should have_title(full_title("About Us")) }
  end
  
  describe "Contact Pages" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title("Contact")) }
  end

  #test links
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title("About")
    click_link "Help"
    expect(page).to have_title("Help")
    click_link "Contact"
    expect(page).to have_title("Contact")
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title("Sign up")
    click_link "sample app"
    expect(page).to have_title(full_title(""))
  end
end
