require File.expand_path(File.join(File.dirname(__FILE__), '..', 'support', 'paths'))

Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I go to (.+)$/) do |page_name|
  expect(current_path).to eq(path_to(page_name))
end
