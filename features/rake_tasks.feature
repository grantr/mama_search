@wip @slow
Feature: Elasticsearch Rake tasks
  In order to manage elasticsearch in a Rails app
  As a Rails developer
  I want to use Rake tasks to interact with elasticsearch 

  Background:
    Given a Rails app with elasticsearch installed via mama search

  Scenario: Starting elasticsearch
    When I run "rake elasticsearch:start" interactively
    Then elasticsearch should be running
