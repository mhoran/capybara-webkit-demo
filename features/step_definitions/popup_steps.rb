Given /^I click the login button$/ do
  visit root_path
end

When /^I sign in via Facebook$/ do
  facebook_window = window_opened_by do
    click_link 'Login'
  end

  within_window(facebook_window) do
    fill_in 'Email', :with => 'test_xmefjnz_user@tfbnw.net'
    fill_in 'Password', :with => '1292562059'
    click_button 'Log In'
  end
end

Then /^I should see my name$/ do
  find('#me').should have_content('Test User')
end
