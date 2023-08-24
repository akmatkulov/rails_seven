require "rails_helper"

feature "Account Creation" do
  
  scenario "allows access to contact page" do
    visit new_user_registration_path
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  
  end
end

