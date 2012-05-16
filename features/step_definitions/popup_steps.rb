Given /^I have a popup$/ do
  visit root_path
end

Then /^I should see the desired text in the popup window$/ do
  page.within_window('My popup') do
    page.should have_content('Hello')
  end
end
