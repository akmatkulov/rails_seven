require "rails_helper"

feature "Account Creation" do
  
  scenario "allows access to contact page" do
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'Mike Ehrmantraut'
    fill_in :user_password, :with => '111zzzDone'
    fill_in :user_password_confirmation, :with => '111zzzDone'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  
  end
end