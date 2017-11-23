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

  Scenario: Customers see dishes sorted in to categories on the page
    When I visit the site
    Then I should see "Pizza" in the "Main Course" section
    And I should see "Apple Pie" in the "Dessert" section
    And I should see "Nachos" in the "Starter" section


    Then I should not see "Apple Pie" in the "Main Course" section
    And I should not see "Pizza" in the "Starter" section
    And I should not see "Nachos" in the "Dessert" section
