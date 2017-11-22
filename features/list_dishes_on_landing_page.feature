Feature: List dishes on landing page
  As a customer
  In order to select a dish
  I would like to see a list of dishes on the landing page

  Scenario: Visitor sees list of dishes on page
    Given there is a dish called "Chicken Wings" with a price of "40 kr"
    And there is a dish called "Nachos " with a price "45 kr"
    When I visit the site
    Then I would like to see "Chicken Wings"
    And I would like to see "Nacho"
