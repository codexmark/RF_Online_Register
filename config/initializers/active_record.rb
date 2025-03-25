# config/initializers/active_record.rb
db_config = Rails.application.config.database_configuration
ActiveRecord::Base.establish_connection(db_config[Rails.env]['primary'])
