require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the combo path', {:type => :feature}) do
  it('processes the user entry and returns the correct change') do
    visit('/')
    fill_in('user_input', :with => '25')
    click_button('Submit')
    expect(page).to have_content('1 quarters')
  end
end
