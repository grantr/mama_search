# Mama Search

Mama Search is a Rails 3 generator to install [elasticsearch](http://elasticsearch.com/).  It also includes Rake tasks for starting elasticsearch.


## Installation

Add mama search to your Gemfile:

<pre>
gem 'mama_search'
</pre>

Use bundler to install it:

<pre>
bundle install
</pre>

Run the generator to install elasticsearch (currently version 0.14.2) in your app:

<pre>
rails g mama_search:install
</pre>

This installs the following directories and files:

* elasticsearch/server/                        # elasticsearch server
* config/elasticsearch.yml                     # app configuration
* config/initializers/elasticsearch.rb         # elasticsearch connection object setup

## Rake tasks

<pre>
rake es:start
</pre>

Start elasticsearch.  Elasticsearch is run in the foreground and should be stopped via <code>Ctrl+C</code>.

## Issues

* The default elasticsearch executable makes it hard to move config files out of
  the project root, so configuration stays in elasticsearch/server/config for now
* Rubberband tries to autodiscover nodes immediately. Until this is changed, the
  global client in the initializer should remain commented.


## Credits

Mama Search is heavily inspired by [Mama Cass](http://github.com/carbonfive/mama_cass)

## LICENSE

Released under the MIT License. See the LICENSE file for further details.
