Given /^I am on a page with an inputmask$/ do
  visit '/test.html'
end

When /^I fill out the masked input$/ do
  fill_in 'Input', with: '2011'
end

Then /^I should see the proper value$/ do
  page.find_field('Input').value.should == '2011'
end
