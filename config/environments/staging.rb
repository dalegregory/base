DevFuBase::Application.configure do
  config.action_controller.perform_caching         = true
  config.active_record.dump_schema_after_migration = false
  config.active_support.deprecation                = :notify
  config.assets.cache_store                        = :dalli_store
  config.assets.compile                            = false
  config.assets.compress                           = true
  config.assets.digest                             = true
  config.cache_classes                             = true
  config.consider_all_requests_local               = false
  config.eager_load                                = true
  config.force_ssl                                 = true
  config.i18n.fallbacks                            = true
  config.log_formatter                             = ::Logger::Formatter.new
  config.log_tags                                  = [ :uuid ]
  config.serve_static_files                        = true
  config.static_cache_control                      = 'public, max-age=31536000'

  config.action_mailer.default_url_options = { host: ENV['EMAIL_HOST'] }
  config.action_mailer.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '25',
    :authentication => :plain,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :domain         => ENV['SENDGRID_DOMAIN']
  }
end
