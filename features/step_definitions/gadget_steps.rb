When(/^I add a gadget$/) do
  fill_in('Name', :with => 'iPhone')
  find(:button, 'Create Gadget').click
end

When(/^I change the gadget's name to "(.*?)"$/) do |name|
  fill_in('Name', :with => name)
  find(:button, 'Update Gadget').click
end

When(/^there is a "(.*?)" gadget$/) do |name|
  Gadget.create!(name: name)
end

Then(/^there is a gadget called "(.*?)"$/) do |name|
  Gadget.find_by_name!(name)
end
