ActionMailer::Base.default_url_options = { host: ENV["MAILER_HOST"] }
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "heroku.com",
  authentication: "plain",
  enable_starttls_auto: true,
  user_name: ENV['GMAIL_USERNAME'],
  password: ENV['GMAIL_PASSWORD']
}
