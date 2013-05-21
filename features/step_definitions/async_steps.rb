When "I've set a timeout of 5 seconds" do
  page.driver.browser.timeout = 5
end

Then /^loading a page with asynchronous JavaScript should not time out$/ do
  #sleep 1.minute
  expect { visit '/async.html' }.not_to raise_error
end
