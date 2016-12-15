Feature: A listing endpoint with minimal required product data for multiple products

  Scenario: Product data should contain images data
    Given I have a listing product data
    Then each product should contain image data

  Scenario: Product data should contain average rating data
    Given I have a listing product data
    Then each product should contain average rating data

  Scenario: Product data should contain delivery type data
    Given I have a listing product data
    Then each product should contain delivery type data

  Scenario: Product data should contain price data
    Given I have a listing product data
    Then each product should contain price data

  Scenario: Product data should contain delivery time data
    Given I have a listing product data
    Then each product should contain delivery time data
