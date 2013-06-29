Feature: Can count fair and square numbers 
  Scenario: Can count fair and square numbers 
    Given the input:
      """
4
quartz 3
straight 3
gcj 2
tsetse 2
      """
    When I run the app
    Then the results should be:
      """
Case #1: 4
Case #2: 11
Case #3: 3
Case #4: 11
      """
