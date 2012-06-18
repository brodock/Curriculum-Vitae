require "rvm/capistrano"                  # Load RVM's capistrano plugin.
require "bundler/capistrano"

set :rvm_ruby_string, 'ruby-1.9.3-p194'        # Or whatever env you want it to run in.
set :rvm_type, :system
set :bundle_flags,    "--quiet"

set :user, "brodock"
set :application, "curriculum"
set :repository,  "git://github.com/brodock/Curriculum-Vitae.git"
set :deploy_to, "/var/www/#{application}"
set :scm, :git
ssh_options[:forward_agent] = true

#role :web, "your web-server here"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
role :web, "your web-server here"                          # Your HTTP server, Apache/etc
role :app, "your app-server here"                          # This may be the same as your `Web` server

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "touch #{File.join(current_release,'tmp','restart.txt')}"
   end
 end
