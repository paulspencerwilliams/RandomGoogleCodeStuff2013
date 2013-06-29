Given(/^the input:$/) do |input|
  steps %{
    Given a file named "input.txt" with:
      """
#{input}
     """
  }

end

When(/^I run the app$/) do
  steps %{
    When I run `the_app input.txt`
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

