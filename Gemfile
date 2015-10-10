source 'https://rubygems.org'

gem 'rails', '4.2'

gem 'mysql2', '~> 0.3.18'
gem 'jbuilder', '~> 2.0'
gem 'unicorn'
gem "devise"
gem "simple_form"
gem 'local_time'
gem "slim-rails"
gem "slim"
gem 'aasm', '~> 4.3.0'

# assets
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'

group :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers', '2.5', require: false
  gem 'factory_girl_rails'
end

group :development do
  gem 'capistrano-rails'
  gem 'spring'
  gem 'guard-bundler', require: false
end

group :development, :test do
  gem 'guard-livereload'
  gem 'guard-rspec', '~> 4.6.4'
  gem 'spork-rails', github: 'sporkrb/spork-rails' # rubygems version not rails 4 compatible
  gem 'guard-spork'
end
