require 'rails'

module MamaSearch
  class Railtie < Rails::Railtie
    generators do
      require 'mama_search/generators/install_generator'
    end

    rake_tasks do
      load 'mama_search/tasks.rb'
    end
  end
end
