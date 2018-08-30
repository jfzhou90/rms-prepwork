require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Tamagotchi', {:type => :feature}) do
  it('creates a new pet') do
    visit('/')
    fill_in('name', :with => 'lil dragon')
    click_button('Go!')
    expect(page).to have_content('lil dragon')
  end

  it('pet dies if any status is 0') do
    visit('/')
    fill_in('name', :with => 'lil dragon')
    click_button('Go!')
    expect(page).to have_content('Food Level: 10')
    10.times do
      click_button('Play')
    end
    expect(page).to have_content('died')

  end
end
