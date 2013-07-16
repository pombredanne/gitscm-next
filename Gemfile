source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'exceptional'
gem 'dalli'
gem 'diff-lcs'
gem 'excon'
gem 'faraday'
gem "feedzirra"
gem 'json'
gem 'launchy'
gem 'puma'
gem 'octokit'
gem 'nestful'
gem 'netrc'
gem 'newrelic_rpm',    '~> 3.6.2.96'
gem 'redcarpet'
gem 'rest-client'
gem 'rubyzip'
gem 'tire'
gem 'yajl-ruby'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails', github: 'milgner/compass-rails', ref: '1749c06f15dc4b058427e7969810457213647fb8'
gem 'therubyracer'
gem 'jquery-rails'

group :production do
  gem "pg"
  gem 'rails_12factor'
#  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
#  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

group :development do
  gem "sqlite3"
  gem "sqlite3-ruby"
  gem "taps"
end

group :development, :test do
  gem 'pry'
  gem 'pry-debugger'
end

group :test do
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'faker'
  gem 'rspec-rails'
  gem 'simplecov', require: false
end
