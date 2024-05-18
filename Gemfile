source "https://rubygems.org"

gem "rails", github: "rails/rails", branch: "main"

gem "puma"

gem "sqlite3"

gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

gem "bootsnap", require: false

gem "kamal", require: false

group :development, :test do
  gem "debug", require: "debug/prelude"

  # Code Critics
  gem "brakeman", require: false
  gem "standard", require: false
  gem "standard-rails", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
