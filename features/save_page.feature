Feature: Testing save_page

  @javascript
  Scenario:
    Given I am on a page with binary content
    When I save the current page
    Then the binary content should match the source content
