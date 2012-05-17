Feature: Testing a Popup

  @javascript
  Scenario:
    Given I click the login button
    When I sign in via Facebook
    Then I should see my name
