Feature: Display categories in menu
  As a customer
  In order to choose more easily
  I would like to see the dishes sorted in categories

  Background:
    Given the following products exist
      | name | price | description | category |
      | Pizza | 105 | Great Pizza | Main Course |
      | Apple Pie | 40 | Great Apple Pie | Dessert |
      | Nachos | 60 | Great Nachos | Starter |
      | Hamburger | 105 | Great Hamburger | Main Course |
      | Ice Cream | 40 | Great Ice Cream | Dessert |
      | Chicken Wings | 60 | Great Chicken Wings | Starter |

  Scenario: Customers see dishes sorted in to categories on the page
    When I visit the site
    Then I should see "Pizza" in the "Main Course" section
    And I should see "Apple Pie" in the "Dessert" section
    And I should see "Nachos" in the "Starter" section
    And I should see "Hamburger" in the "Main Course" section
    And I should see "Ice Cream" in the "Dessert" section
    And I should see "Chicken Wings" in the "Starter" section
    Then I should not see "Apple Pie" in the "Main Course" section
    And I should not see "Pizza" in the "Starter" section
    And I should not see "Nachos" in the "Dessert" section
    And I should not see "Hamburger" in the "Starter" section
    And I should not see "Ice Cream" in the "Main Course" section
    And I should not see "Chicken Wings" in the "Dessert" section
    Then show me the page
