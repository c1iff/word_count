require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_count path', {:type => :feature}) do
  it('returns a word count of 1 if the single calling word and argument word match') do
    visit('/')
    fill_in('string', :with => 'ruby')
    fill_in('word-to-count', :with => 'ruby')
    # check('partial-match')
    click_button('Go')
    expect(page).to have_content("1")
  end

  it('returns a word count of 1 if the single calling word and argument word match') do
    visit('/')
    fill_in('string', :with => 'javascript')
    fill_in('word-to-count', :with => 'java')
    check('partial-match1')
    click_button('Go')
    expect(page).to have_content("1")
  end

end
