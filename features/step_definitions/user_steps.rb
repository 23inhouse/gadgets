Given(/^"(.*?)" is a user$/) do |email|
  User.create!(email: 'cool@dewd.com', password: 12345678)
end

When(/^I sign in as "(.*?)"$/) do |email|
  fill_in('Email',                  :with => 'cool@dewd.com')
  fill_in('Password',               :with => '12345678')
  find(:button, 'Sign in').click
end

When(/^I am signed in as "(.*?)"$/) do |email|
  step "I am on the sign in page"
  step "I sign in as \"#{email}\""
end

When(/^I sign out$/) do
  find(:link, 'Logout').click
end
