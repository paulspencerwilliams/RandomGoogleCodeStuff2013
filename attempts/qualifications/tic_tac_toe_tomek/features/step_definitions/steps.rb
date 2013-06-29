Given(/^the input:$/) do |input|
  steps %{
    Given a file named "input.txt" with:
      """
#{input}
     """
  }
end

When(/^I ask for result of game$/) do
  steps %{
    When I run `status_of_game input.txt`
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

