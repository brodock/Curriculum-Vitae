require "bundler/capistrano"

set :bundle_flags,    "--quiet"

set :application, "gabrielmazetto.eti.br"
set :repository,  "git://github.com/brodock/Curriculum-Vitae.git"
set :scm, :git

set :deploy_to, "/home/brodock/#{application}"
set :deploy_via, :remote_cache

set :user, "brodock"
set :use_sudo, false

#role :web, "your web-server here"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
role :web, "your web-server here"                          # Your HTTP server, Apache/etc
role :app, "your app-server here"                          # This may be the same as your `Web` server

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_release,'tmp','restart.txt')}"
   end
 end
