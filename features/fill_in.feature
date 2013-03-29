Feature: Testing fill_in

  @javascript
  Scenario:
    Given I am on a page with a text input
    When I fill in a negative value
    Then a negative value should be returned
