require 'spec_helper'
require 'rails_helper'

feature 'create user' do
  scenario "can create user" do

    visit '/users/new'
    expect(page).to have_content('Create a RamenRate Account')

    fill_in 'Name', :with=>'Karen'
    fill_in 'E-mail', :with=>'karen@karen.com'
    fill_in 'Password', :with=>"123456"
    fill_in 'Confirm Password', :with=>"123456"

    click_button 'Create'

    expect(page).to have_content("Welcome to RamenRate")
  end
end

feature 'page validation check' do
  scenario "visitng page without being logged in" do

    visit '/ramen'
    expect(page).to have_content('Please log in as a user before viewing this page.')
  end
end
