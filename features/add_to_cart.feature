Feature: User can add product to order
As a customer
In order to buy dishes
I would like to be able to add them to an order

Background:
  Given the following products exist
    | name | price | description | category |
    | Pizza | 105 | Great Pizza | Main Course |
    | Apple Pie | 40 | Great Apple Pie | Dessert |
    | Nachos | 60 | Great Nachos | Starter |
    | Hamburger | 105 | Great Hamburger | Main Course |
    | Ice Cream | 40 | Great Ice Cream | Dessert |
    | Chicken Wings | 60 | Great Chicken Wings | Starter |

  Scenario: User click "Order" on a product and creates an order
    Given I visit the site
    And I click "Order" on "Pizza"
    Then there should be an order created for me
    And the order should contain "Pizza"
    And I should see "Pizza was added to your order"

  Scenario: User can add a second product to the order
    Given I visit the site
    Given there is an order with order item "Apple Pie"
    And I click "Order" on "Hamburger"
    Then I should see "Hamburger was added to your order"
    And the order should contain "Hamburger"
    And the order should contain "Apple Pie"
