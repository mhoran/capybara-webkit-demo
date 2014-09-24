require 'spec_helper'

feature 'clicking a checkbox', js: true do
  scenario 'should click the checkbox on the first try' do
    visit '/checkbox.html'

    find('input[type=checkbox]').should_not be_checked

    page.check "Test"

    find('input[type=checkbox]').should be_checked
  end
end
