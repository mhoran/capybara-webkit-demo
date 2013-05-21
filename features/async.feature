Feature: Loading resources asynchronously

  @javascript
  Scenario:
    When I've set a timeout of 5 seconds
    Then loading a page with asynchronous JavaScript should not time out
