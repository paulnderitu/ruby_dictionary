require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path of index', {:type=> :feature}) do
  it("takes you to success page when you add a word") do
    visit('/')
    click_button('Add')
    expect(page).to have_content("Congratulations! Your word has been added successfully")
  end
end

describe('path of word list at index', {:type=> :feature}) do
  it("displays a list of words added at index page") do
    visit('/')
    fill_in("word", :with=> "house")
    click_button('Add')
    visit('/')
    expect(page).to have_content("house")
  end
end

describe('path of word', {:type=> :feature}) do
    it("takes you to a one word page") do
    visit('/word/:id')
    expect(page).to have_content("Define your word here")
  end
end

describe('path of definition', {:type=> :feature}) do
  it("displays the success page after definition input") do
    visit('/success_2')
    expect(page).to have_content("Added Definition:")
  end
end
