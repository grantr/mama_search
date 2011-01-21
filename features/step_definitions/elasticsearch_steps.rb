Then /^elasticsearch should be running$/ do
  steps %q{
    Then the output should contain "started"
  }
end
