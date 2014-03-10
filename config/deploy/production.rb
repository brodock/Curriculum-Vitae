set :stage, :production

set :deploy_to, '/home/deploy/gabrielmazetto.eti.br'
set :branch, 'master'
set :rack_env, 'production'

server 'gabrielmazetto.eti.br', user: 'deploy', roles: %w{web app db}