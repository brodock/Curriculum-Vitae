require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require './lib/helpers.rb'
require './lib/loader.rb'
require './application.rb'
run CurriculumApp
