Feature: Create Product

  @bvt @deleteProduct @SoftAssert
  Scenario: Create a new Product
    Given I go to "Product" Home Page
    And I click on New "Product"
    When I fill the Product form with:
      | PRODUCT_NAME        | AutomatedDemoAT04 |
      | PRODUCT_CODE        | 123               |
      | PRODUCT_DESCRIPTION | Just Something    |
      | PRODUCT_FAMILY      | None              |
      | ACTIVE              | true              |
    Then the Product should be displayed
    And I go to "Product" Home Page
    And the Product should be displayed on Home Page
    And Assert all

  Scenario: Create a new Product with empty name
    Given I go to "Product" Home Page
    And I click on New "Product"
    When I fill the Product form with:
      | PRODUCT_NAME |  |
    Then "required fields must be completed" message should be displayed in "Product" form
