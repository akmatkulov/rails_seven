require "rails_helper"

feature "Contact Creation" do
  
  scenario "allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content 'Add New Contact'
  end
end