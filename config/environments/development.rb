RailsgirlsLondon::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log
  config.log_level = :info

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  # Store files locally.
  config.active_storage.service = :local

  # config.action_mailer.smtp_settings = {
  #   :port =>           '587',
  #   :address =>        'smtp.sendgrid.net',
  #   :user_name =>      'apikey',
  #   :password =>       ENV['SENDGRID_API_KEY'],
  #   :domain =>         'localhost:3000',
  #   :authentication => :plain,
  #   :enable_starttls_auto => true
  # }
  # ActionMailer::Base.delivery_method = :smtp

  # for local browser mail deliveries
  ActionMailer::Base.delivery_method = :letter_opener
  config.action_mailer.perform_deliveries = true

  config.action_mailer.asset_host = ENV['MAILER_ASSET_HOST']

  # config.action_mailer.smtp_settings = { :address => "localhost", :port => 1025 }
end
