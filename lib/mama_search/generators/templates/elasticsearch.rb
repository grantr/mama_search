require 'rubberband'
config = YAML.load_file(Rails.root.join("config", "elasticsearch.yml"))[Rails.env]
#TODO auto discover happens immediately, so this forces elasticsearch to be running.
# uncomment when this is fixed.
#$elasticsearch = ElasticSearch.new(config['servers'])
