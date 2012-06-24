require 'development_mail_interceptor'
CREDENTIALS = if Rails.env == 'production'
    { "username" => ENV['EMAIL_USER'], "password" => ENV['EMAIL_PASS'] }
  else
    YAML.load_file("#{Rails.root}/config/credentials.yml")["gmail"]
  end

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => CREDENTIALS["username"],
  :password             => CREDENTIALS["password"],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
