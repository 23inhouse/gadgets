Then(/^I am messaged "(.*?)"$/) do |message|
  within('.notice') do
    expect(page).to have_content(message)
  end
end
