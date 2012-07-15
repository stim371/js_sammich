require 'development_mail_interceptor'
CREDENTIALS = if Rails.env == 'production'
    { "username" => ENV['SENDGRID_USERNAME'], "password" => ENV['SENDGRID_PASSWORD'] }
  else
    YAML.load_file("#{Rails.root}/config/credentials.yml")["gmail"]
  end

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :authentication       => :plain,
  :user_name            => CREDENTIALS["username"],
  :password             => CREDENTIALS["password"],
  :domain               => "heroku.com"
}
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
