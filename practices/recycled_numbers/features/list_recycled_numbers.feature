Feature: Want to list recycled numbers
  Scenario: Want to list recycled numbers
    Given the input:
      """
4
1 9
10 40
100 500
1111 2222
      """
    When I ask to list recycled numbers 
    Then the results should be:
      """
Case #1: 0
Case #2: 3
Case #3: 156
Case #4: 287
      """

