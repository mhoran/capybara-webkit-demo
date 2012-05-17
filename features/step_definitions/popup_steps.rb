Given /^I have a popup$/ do
  visit root_path
end

Then /^I should see the desired text in the popup window$/ do
  within_window('My popup') do
    find('p').should have_content('Hello')
  end
end
