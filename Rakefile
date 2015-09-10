require './lib/init.rb'
Bundler.require(:development)

# Aditional Libraries for tasks
require 'sinatra/asset_pipeline/task.rb'

# Enfore codestyle
require 'rubocop/rake_task'

Sinatra::AssetPipeline::Task.define! CurriculumApp
RuboCop::RakeTask.new

task default: [:'assets:precompile', :lint]
task lint: [:rubocop]
