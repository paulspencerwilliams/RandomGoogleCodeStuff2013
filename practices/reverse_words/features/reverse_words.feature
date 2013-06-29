Feature: Given a list of space separated words, reverse the order of the words. Each line of text contains L letters and W words. A line will only consist of letters and space characters. There will be exactly one space character between each pair of consecutive words.

  Scenario: 
    Given the input: 
      """
3
this is a test
foobar
all your base
      """
    When I ask to reverse words
    Then I should see:
      """
Case #1: test a is this
Case #2: foobar
Case #3: base your all
      """
