Feature:  A detail endpoint returns detailed product data for one product

  Scenario: Product data should contain feedback data
    Given I have a detailed product data
    Then product should contain feedback data