require 'spec_helper'

feature 'visiting a fonticon page', js: true do
  scenario 'should be able to click the fonticon' do
    page.driver.block_unknown_urls
    page.driver.allow_url('maxcdn.bootstrapcdn.com')

    visit '/fonticon.html'

    page.find('a').click
  end
end
