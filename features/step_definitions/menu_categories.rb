Given(/^the following products exist$/) do |table|
  table.hashes.each do |product|
    Product.create(product)
  end
end

Then(/^I should see "([^"]*)" in the "([^"]*)" section$/) do |product_name, section_name|
  within "section##{section_name.titleize.gsub(' ', '').underscore}" do
    expect(page).to have_content product_name
  end
end

Then(/^I should not see "([^"]*)" in the "([^"]*)" section$/) do |product_name, section_name|
  within "section##{section_name.titleize.gsub(' ', '').underscore}" do
    expect(page).to_not have_content product_name
  end
end
