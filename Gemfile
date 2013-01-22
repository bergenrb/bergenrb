source :rubygems

ruby '1.9.3'

gem 'thin'

gem 'rails',                   '~> 3.2.8'
gem 'jquery-rails',            '~> 2.1'

gem 'high_voltage',            '~> 0.9'
gem 'kaminari',                '~> 0.13.0'
gem 'simple_form',             '~> 2.0'
gem 'friendly_id',             '~> 3.3.0.1'
gem 'stamp',                   '~> 0.1.0'
gem 'client_side_validations', '~> 3.2.0.beta.6'
gem 'client_side_validations-simple_form', '~> 2.0.0.beta.1'
gem 'compass-rails'

# RSpec needs to be in :development group to expose generators
# and rake tasks without having to type RAILS_ENV=test.
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails',    '~> 2.0'
  gem 'debugger'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.0'
  gem 'uglifier'
end

group :production do
  gem 'pg'
  gem 'dalli'
end

group :test do
  gem 'vcr',                '~> 1.10.3'
  gem 'webmock',            '~> 1.6.4'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'bourne',             '~> 1'
  gem 'capybara',           '~> 1.1.0'
  gem 'database_cleaner',   '~> 0.6.0'
  gem 'timecop',            '~> 0.3.5'
  gem 'valid_attribute',    '~> 1'
  gem 'launchy'
  gem 'simple-rss',         '~> 1.2.3'
  gem 'fivemat'
  gem 'guard-rspec'
  gem 'rb-fsevent'
end
