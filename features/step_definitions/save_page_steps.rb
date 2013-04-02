Given "I am on a page with binary content" do
  visit '/workcam.jpg'
end

When "I save the current page" do
  save_page(Rails.root.join('tmp', 'workcam.jpg'))
end

Then "the binary content should match the source content" do
  File.read(Rails.root.join('public', 'workcam.jpg')).should ==
    File.read(Rails.root.join('tmp', 'workcam.jpg'))
end
