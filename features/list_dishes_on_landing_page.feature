Feature: List dishes on landing page
  As a customer
  In order to select a dish
  I would like to see a list of dishes on the landing page

  Scenario: Visitor sees list of dishes on page
    Given there is a dish called "Chicken Wings" with a price of "40" kr and description of "Great Chicken Wings"
    And there is a dish called "Nachos" with a price of "45" kr and description of "Great Nachos"
    And there is a dish called "Hamburger" with a price of "95" kr and description of "Great Hamburger"
    And there is a dish called "Pizza" with a price of "105" kr and description of "Great Pizza"
    And there is a dish called "Apple Pie" with a price of "75" kr and description of "Great Apple Pie"
    And there is a dish called "Cheese Cake" with a price of "60" kr and description of "Great Cheese Cake"
    When I visit the site
    Then I would like to see "Chicken Wings" with a price of "40" kr
    And I would like to see "Great Chicken Wings"
    And I would like to see "Nachos" with a price of "45" kr
    And I would like to see "Great Nachos"
    And I would like to see "Hamburger" with a price of "95" kr
    And I would like to see "Great Hamburger"
    And I would like to see "Pizza" with a price of "105" kr
    And I would like to see "Great Pizza"
    And I would like to see "Apple Pie" with a price of "75" kr
    And I would like to see "Great Apple Pie"
    And I would like to see "Cheese Cake" with a price of "60" kr
    And I would like to see "Great Cheese Cake"
    Then show me the page
