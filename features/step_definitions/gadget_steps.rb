When(/^I add a gadget$/) do
  fill_in('Name', :with => 'iPhone')
  find(:button, 'Create Gadget').click
end

When(/^I change the gadget's name to "(.*?)"$/) do |name|
  fill_in('Name', :with => name)
  find(:button, 'Update Gadget').click
end

When(/^there is a "(.*?)" gadget(?: with (\d+) images?)?$/) do |name, count|
  gadget = Gadget.create!(name: name)
  count.to_i.times do
    gadget_image = gadget.gadget_images.build(image: "#{Rails.root}spec/fixtures/image.png")
    gadget_image.save!
  end
end

When(/^I add an image$/) do
  find(:link, 'Add New Gadget image').click
  file_path = Rails.root + "spec/fixtures/image.png"
  within all('.gadget_images fieldset').last do
    attach_file('Image', file_path)
  end
end

When(/^I update the gadget$/) do
  find(:button, 'Update Gadget').click
end

Then(/^the gadget has (\d+) images?$/) do |number|
  expect(Gadget.last.gadget_images.count).to eq(number.to_i)
end

Then(/^there is a gadget called "(.*?)"$/) do |name|
  Gadget.find_by_name!(name)
end
