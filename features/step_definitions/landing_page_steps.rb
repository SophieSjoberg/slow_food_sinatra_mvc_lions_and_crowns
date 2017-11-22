Given(/^there is a dish called "([^"]*)" with a price of "([^"]*)" kr and description of "([^"]*)"$/) do |product_name, price, description|
  Product.create(name: product_name, price: price.to_i, description: description)
end

When(/^I visit the site$/) do
  visit '/'
end

Then(/^I would like to see "([^"]*)" with a price of "([^"]*)" kr$/) do |product_name, price|
  expected_output = "#{product_name} - #{price}"
  expect(page).to have_content expected_output
end

Then(/^I would like to see "([^"]*)"$/) do |description|
  expect(page).to have_content products.description
end
