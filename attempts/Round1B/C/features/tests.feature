Feature: Can count fair and square numbers 
  Scenario: Can count fair and square numbers 
    Given the input:
      """
4
codejam
cxdejax
cooperationaabea
jobsinproduction
      """
    When I run the app
    Then the results should be:
      """
Case #1: 0
Case #2: 2
Case #3: 1
Case #4: 1
      """
