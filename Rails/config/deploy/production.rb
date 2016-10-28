set :stage, :production
server '192.168.58.17', user: 'deploy', roles: %w{web app db}
