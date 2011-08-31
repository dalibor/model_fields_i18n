require 'model_fields_i18n'

# setup connection
ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
  :database => File.join(File.dirname(__FILE__), "support", "db", "model_fields_i18n.sqlite3"))

# load schema and models
load File.dirname(__FILE__) + '/support/schema.rb'
load File.dirname(__FILE__) + '/support/models.rb'
