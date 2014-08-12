Then(/^I am messaged "(.*?)"$/) do |message|
  within('.flash_notice') do
    expect(page).to have_content(message)
  end
end
