Feature: List dishes on landing page
  As a customer
  In order to select a dish
  I would like to see a list of dishes on the landing page

  Background:
    Given the following products exist
      | name | price | description | category |
      | Pizza | 105 | Great Pizza | Main Course |
      | Apple Pie | 40 | Great Apple Pie | Dessert |
      | Nachos | 60 | Great Nachos | Starter |
      | Hamburger | 105 | Great Hamburger | Main Course |
      | Ice Cream | 40 | Great Ice Cream | Dessert |
      | Chicken Wings | 60 | Great Chicken Wings | Starter |

  Scenario: Visitor sees list of dishes on page
    When I visit the site
    And show me the page
    Then I would like to see "Chicken Wings" with a price of "60" kr
    And I would like to see "Great Chicken Wings"
    And I would like to see "Nachos" with a price of "60" kr
    And I would like to see "Great Nachos"
    And I would like to see "Hamburger" with a price of "105" kr
    And I would like to see "Great Hamburger"
    And I would like to see "Pizza" with a price of "105" kr
    And I would like to see "Great Pizza"
    And I would like to see "Apple Pie" with a price of "40" kr
    And I would like to see "Great Apple Pie"
    And I would like to see "Ice Cream" with a price of "40" kr
    And I would like to see "Great Ice Cream"
