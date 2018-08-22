require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Home page', {:type => :feature}) do
  it('takes you to the 1st room') do
    visit('/')
    click_link('Enter Here')
    expect(page).to have_content('You are in room 1')
  end

  it('takes you to the 2nd room') do
    visit('/')
    click_link('Enter Here')
    visit('/room?direction=RIGHT')
    expect(page).to have_content('You are in room 2')
  end

  it('wins the game') do
    visit('/')
    click_link('Enter Here')
    visit('/room?direction=RIGHT')
    visit('/room?direction=UP')
    visit('/room?direction=UP')
    visit('/room?direction=RIGHT')
    expect(page).to have_content('Congrats, you\'ve escaped the amazing maze, you are AMAZING!')
  end
end