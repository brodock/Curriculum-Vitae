# Ugly fix for bundler's "ArgumentError: invalid byte sequence in US-ASCII" error
if RUBY_VERSION =~ /1.9/
    Encoding.default_external = Encoding::UTF_8
    Encoding.default_internal = Encoding::UTF_8
end

source :rubygems
gem 'sinatra', :require => 'sinatra/base'
gem 'sinatra-r18n', :require => 'sinatra/r18n'
gem 'sinatra-static-assets', :require => 'sinatra/static_assets', :git => 'git://github.com/brodock/sinatra-static-assets.git'

group :development do
  gem 'puma'
  gem 'capistrano'
  gem 'rvm-capistrano'
end
