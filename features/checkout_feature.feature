Feature: User with order can checkout
  As a visitor
  In order to get the food I ordered
  I would like to be able to finalize my order (checkout)

  Background:
    Given the following products exist
      | name | price | description | category |
      | Pizza | 105 | Great Pizza | Main Course |
      | Apple Pie | 40 | Great Apple Pie | Dessert |
      | Nachos | 60 | Great Nachos | Starter |

    And the time is "12:00"

    And I visit the site
    And there is an order with order item "Nachos"
    And there is an order with order item "Pizza"


  Scenario Outline: User can see checkout
    And I click "Checkout"
    Then I should be on the checkout page
    Then I should see <name> and <price> in the order
    And I should see "Order total: 165 kr"
    And I should see "Estimated pickup time: 12:30"

    Examples:
      | name    | price |
      | Nachos  | 60    |
      | Pizza   | 105   |
