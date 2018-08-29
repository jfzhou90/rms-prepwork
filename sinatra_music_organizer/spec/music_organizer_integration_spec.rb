require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('HomePage', {:type => :feature}) do
  it('list all artist') do
    visit('/')
    click_link('John Doe')
    expect(page).to have_content('Unknown')
  end
end
