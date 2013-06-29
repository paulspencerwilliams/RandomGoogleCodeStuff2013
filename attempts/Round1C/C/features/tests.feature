Feature: Can count fair and square numbers 
  Scenario: Can count fair and square numbers 
    Given the input:
      """
3
1 4
10 120
100 1000
      """
    When I run the app
    Then the results should be:
      """
Case #1: 2
Case #2: 0
Case #3: 2
      """
