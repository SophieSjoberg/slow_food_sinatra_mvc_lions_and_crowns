Given(/^the time is "([^"]*)"$/) do |time|
  Timecop.freeze(Time.local(2017, 1, 1, time))
end

Given(/^I click "([^"]*)"$/) do |element|
  click_link_or_button element
end

Then(/^I should be on the checkout page$/) do
  expect(current_path).to eq '/checkout'
end

Then(/^I should see (.*) and (.*) in the order$/) do |product_name, price|
  expected_output = "#{product_name} - #{price} kr"
    within '#order-details' do
    expect(page).to have_content expected_output
  end
end

Given(/^I am logged out$/) do
  session[:user_id] = nil
end
