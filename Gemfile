source 'https://rubygems.org'
ruby '2.4.6'

gem 'rails', '4.2.11.1'
# PostgreSQL
gem 'pg', '0.21.0'
gem 'sass-rails'
gem 'haml-rails'
gem 'uglifier', '2.5.3'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '~> 3.1.0'
gem 'turbolinks', '2.5.2'
gem 'jbuilder', '2.2.5'
gem 'bcrypt', '3.1.9'


# Devise: https://github.com/plataformatec/devise
gem 'devise', '~> 4.7.0'
gem "devise-i18n"

# Redcarpet: https://github.com/vmg/redcarpet
gem 'redcarpet', '3.2.0'

# Necessary for Windows OS (won't install on *nix systems)
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Kaminari: https://github.com/amatsuda/kaminari
gem 'kaminari', '0.16.1'

gem 'friendly_id', '5.0.4'

gem 'font-awesome-sass', '4.2.2'

gem 'bootstrap-sass', '~> 3.4.0'

gem "activeadmin", "~> 1.0.0"

gem "asset_sync"

gem "mini_magick"
gem "carrierwave"
gem "fog"
gem 'puma'

gem 'airbrake'

gem "recaptcha"

group :development, :test do
  gem 'figaro', '1.0.0'
  gem "guard-livereload"
  gem 'guard-spring'
  gem 'guard-rspec', require: false
  gem 'guard-bundler'
  gem "byebug"
end

group :development do
  gem "rspec-rails"
  gem "rails_best_practices"
  gem "brakeman", require: false
  gem "bullet"
  gem "quiet_assets"
end

group :test do
  gem "faker"
  gem 'timecop'
  gem 'email_spec'
  gem "factory_girl_rails"
  gem 'shoulda-matchers', "~> 2.8.0"
end

group :production do
  gem 'rails_12factor'
end
