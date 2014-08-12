When(/^I sign up as "(.*?)"$/) do |email|
  fill_in('Email',                  :with => 'cool@dewd.com')
  fill_in('Password',               :with => '12345678')
  fill_in('Password confirmation',  :with => '12345678')
  find(:button, 'Sign up').click
end
