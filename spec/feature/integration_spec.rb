# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do 
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'rowling?'
        fill_in "book[price]", with: '1.00'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
 
    scenario 'invalid inputs' do 
    visit new_book_path
        fill_in "book[title]", with: ''
        click_on 'Create Book'
        expect(page).to have_content('error')
    end

end