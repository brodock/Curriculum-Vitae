require 'rubygems'
require 'bundler/setup'

# Initialize Bundler and require Gems
Bundler.require(:default)

# Libraries
require './lib/helpers'
require './lib/loader'

# Application
require './application'