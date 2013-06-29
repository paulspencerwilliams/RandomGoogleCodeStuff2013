Given(/^the input:$/) do |input|
  steps %{
    Given a file named "input.txt" with:
      """
#{input}
     """
  }
end

When(/^I ask to list recycled numbers$/) do
  steps %{
    When I run `list_recycled_numbers input.txt`
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

