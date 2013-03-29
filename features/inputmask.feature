Feature: Testing jQuery inputmask

  @javascript
  Scenario:
    Given I am on a page with an inputmask
    When I fill out the masked input
    Then I should see the proper value
