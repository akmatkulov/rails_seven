def sign_up
  visit new_user_registration_path
  #fill_in('111zzzDone', with: user_password_confirmation)
  fill_in :user_email, :with => 'users@example.com'
  fill_in :user_username, :with => 'Mike Ehrmantraut'
  fill_in :user_password, :with => '111zzzDone'
  fill_in :user_password_confirmation, :with => '111zzzDone'

  click_button 'Sign up'
end