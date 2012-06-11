require 'development_mail_interceptor'
CREDENTIALS = YAML.load_file("#{Rails.root}/config/credentials.yml")["gmail"]

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => CREDENTIALS["username"],
  :password             => CREDENTIALS["password"],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
