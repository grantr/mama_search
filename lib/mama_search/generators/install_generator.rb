require 'rails/generators'

module MamaSearch
  module Generators 
    class InstallGenerator < Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), './templates')

      def install
        say 'Installing elasticsearch...' 
        source = File.join File.dirname(__FILE__), '/../../../vendor/elasticsearch-0.14.2'
        destination = 'elasticsearch/server'
        directory source, destination 
        chmod "#{destination}/bin/", 0755
      end

      def config
        say 'Installing config...'
        template 'elasticsearch.app.yml', 'config/elasticsearch.yml'
        #copy_file 'elasticsearch.in.sh', 'config/elasticsearch/elasticsearch.in.sh'
        #copy_file 'logging.yml', 'config/elasticsearch/logging.yml'
        template 'elasticsearch.yml', 'elasticsearch/server/config/elasticsearch.yml'
        copy_file 'elasticsearch.rb', 'config/initializers/elasticsearch.rb'
      end

     protected

      def application_name
        Rails.application.class.name.split('::').first.underscore 
      end 
    end
  end
end
