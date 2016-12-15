When(/^I have a listing product data$/) do
  @listing_product_data ||= ApiHelper.download_and_parse_json(Fixtures['endpoint.listing_product'])
end

When(/^I have a detailed product data$/) do
  @detailed_product_data ||= ApiHelper.download_and_parse_json(Fixtures['endpoint.detailed_product'])
end

Then(/^each product should contain image data$/) do
 expect(ApiListingProductPage).to have_image_info(@listing_product_data)
end

Then(/^each product should contain average rating data$/) do
  expect(ApiListingProductPage).to have_average_rating_info(@listing_product_data)
end

Then(/^each product should contain delivery type data$/) do
  expect(ApiListingProductPage).to have_delivery_type_info(@listing_product_data)
end

Then(/^each product should contain price data$/) do
  expect(ApiListingProductPage).to have_price_info(@listing_product_data)
end

Then(/^each product should contain delivery time data$/) do
  expect(ApiListingProductPage).to have_delivery_time_info(@listing_product_data)
end

Then(/^product should contain feedback data$/) do
  expect(ApiDetailedProductPage).to have_feedbacks_info(@detailed_product_data)
end
