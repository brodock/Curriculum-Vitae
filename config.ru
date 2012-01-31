require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra/base'
require './application.rb'
run CurriculumApp
