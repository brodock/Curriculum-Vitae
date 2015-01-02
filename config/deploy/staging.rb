set :stage, :staging

set :deploy_to, '/home/deploy/beta.gabrielmazetto.eti.br'
set :branch, proc { `git symbolic-ref HEAD 2> /dev/null`.strip.gsub(/^refs\/heads\//, '') }
set :rack_env, 'production'

server 'gabrielmazetto.eti.br', user: 'deploy', roles: %w{web app db}