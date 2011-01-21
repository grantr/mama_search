Given /^a Rails app using mama search$/ do
  steps %q{
    When I run "rails new sample-app"
      And I cd to "sample-app"
      And I append to "Gemfile" with: 
        """
        gem 'mama_search', 
          :path => './../../../'
        """
      And I run "bundle install --local"
  }
end

Then /^elasticsearch should be installed$/ do
  steps %q{
    Then the output should contain "Installing elasticsearch..."
      And the following directories should exist:
        | elasticsearch                              |
        | elasticsearch/server                       |
        | elasticsearch/server/bin                   |
        | elasticsearch/server/config                |
        | elasticsearch/server/lib                   |
      And the output should contain "Installing config..."
      And the following files should exist:
        | config/elasticsearch.yml                     |
        | config/elasticsearch/elasticsearch.in.sh     |
        | config/elasticsearch/elasticsearch.yml       |
        | config/elasticsearch/logging.yml             |
        | config/initializers/elasticsearch.rb         |
  }
end

Given /^a Rails app with elasticsearch installed via mama search$/ do
  steps %q{
    Given a Rails app using mama search
      And I run "rails g mama_search:install"
  }
end
