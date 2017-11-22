Feature: List dishes on landing page
  As a customer
  In order to select a dish
  I would like to see a list of dishes on the landing page

  Scenario: Visitor sees list of dishes on page
    Given there is a dish called "Chicken Wings" with a price of "40" kr
    And there is a dish called "Nacho" with a price of "45" kr
    And there is a dish called "Hamburger" with a price of "95" kr
    And there is a dish called "Pizza" with a price of "105" kr
    And there is a dish called "Apple Pie" with a price of "75" kr
    And there is a dish called "Cheese cake" with a price of "60" kr
    When I visit the site
    Then I would like to see "Chicken Wings" with a price of "40" kr
    And I would like to see "Nacho" with a price of "45" kr
    And I would like to see "Hamburger" with a price of "95" kr
    And I would like to see "Pizza" with a price of "105" kr
    And I would like to see "Apple Pie" with a price of "75" kr
    And I would like to see "Cheese cake" with a price of "60" kr
