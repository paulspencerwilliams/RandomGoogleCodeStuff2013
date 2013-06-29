Given(/^the input:$/) do |input|
  steps %{
    Given a file named "input.txt" with:
      """
#{input}
     """
  }

end

When(/^I ask to count fair and square numbers$/) do
  steps %{
    When I run `count_fair_and_square_numbers input.txt`
  }
end

Then(/^the results should be:$/) do |output|
  steps %{
    Then it should pass with:
      """
#{output}
      """
  }
end

