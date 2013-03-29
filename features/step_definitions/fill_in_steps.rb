Given "I am on a page with a text input" do
  visit '/test.html'
end

When "I fill in a negative value" do
  fill_in 'Number', with: '-2.5'
end

Then "a negative value should be returned" do
  find_field('Number').value.should == '-2.5'
end
