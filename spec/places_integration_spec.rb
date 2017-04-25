require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('takes user entry and returns list of places they have been') do
    visit('/')
    fill_in('place', :with => 'Alaska')
    click_button('Add Place')
    visit('/')
    expect(page).to have_content('Alaska')
  end
end
