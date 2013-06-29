Given(/^the input:$/) do |input|
  steps %{
    Given a file named "input.txt" with:
      """
#{input}
      """
  }
end

When(/^I ask to reverse words$/) do
  steps %{
    When I run `reverse input.txt`
  }
end

Then(/^I should see:$/) do |output|
  steps %{
    Then it should pass with:
      """
#{output}
      """
  }   
end

