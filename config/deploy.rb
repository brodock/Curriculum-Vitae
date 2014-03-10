# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'gabrielmazetto.eti.br'
set :repo_url, 'https://github.com/brodock/Curriculum-Vitae.git'

set :format, :pretty
set :log_level, :info

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :default_env, {'LANG' => 'pt_BR.UTF-8'}
set :keep_releases, 10

set :ssh_options, {
    forward_agent: true
}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end

    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute :rake, 'assets:clean'
      end
    end
  end

  after :publishing, :restart
end
