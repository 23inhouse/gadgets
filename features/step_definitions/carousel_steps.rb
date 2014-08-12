When(/^I click for the next image$/) do
  find('#slick-next').click
end

Then(/^the carousel moves to the right$/) do
  page.execute_script("setTimeout(function() { $('.carousel').text($('.carousel').slickCurrentSlide()) }, 10)")
  expect(find('.carousel')).to have_content(1)
end
