set :application, 'gabrielmazetto.eti.br'
set :repo_url, 'https://github.com/brodock/Curriculum-Vitae.git'

set :format, :pretty
set :log_level, :info

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :default_env, 'LANG' => 'pt_BR.UTF-8'
set :keep_releases, 10

set :ssh_options, forward_agent: true

namespace :deploy do
  task :precompile do
    on roles(:app) do
      within release_path do
        with rack_env: fetch(:rack_env) do
          execute :rake, 'assets:precompile'
        end
      end
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :updated, :precompile
  after :publishing, :restart
end
