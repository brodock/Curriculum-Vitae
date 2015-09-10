source 'https://rubygems.org'
ruby '2.1.5'

gem 'puma'
gem 'psych'
gem 'sinatra', :require => 'sinatra/base'
gem 'sinatra-r18n', :require => 'sinatra/r18n'
gem 'sinatra-static-assets', :require => 'sinatra/static_assets', :git => 'git://github.com/brodock/sinatra-static-assets.git'
gem 'sinatra-asset-pipeline', :require => 'sinatra/asset_pipeline'

# Assets
gem 'neat'
gem 'sass'
gem 'uglifier'

group :development do
  gem 'capistrano', '~> 3.1'
  gem 'capistrano-bundler', '~> 1.1'
  gem 'capistrano-rails'
  gem 'pry'
end

group :development, :test do
  gem 'rubocop'
end
