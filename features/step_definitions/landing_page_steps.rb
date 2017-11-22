Given(/^there is a dish called "([^"]*)" with a price of "([^"]*)" kr$/) do |product_name, price|
  Product.create(name: product_name, price: price.to_i)
end

When(/^I visit the site$/) do
  visit '/'
end

Then(/^I would like to see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end
