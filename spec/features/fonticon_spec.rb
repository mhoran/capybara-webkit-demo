require 'spec_helper'

feature 'visiting a fonticon page', js: true do
  scenario 'should be able to click the fonticon' do
    visit '/fonticon.html'

    page.find('a').click
  end
end
