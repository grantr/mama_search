Feature: Rails generator to install elasticsearch
  In order to use elasticsearch in a Rails app
  As a Rails developer
  I want to be able to run a Rails generator to install elasticsearch

  @slow
  Scenario: Install elasticsearch
    Given a Rails app using mama search
    When I run "rails g mama_search:install"
    Then elasticsearch should be installed
