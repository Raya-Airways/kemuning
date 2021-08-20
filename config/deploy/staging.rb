set :application_name, 'kemuning-raya-staging'
set :domain, '10.60.20.110'
set :port, '8586'
set :deploy_to, '/var/www/kemuning-raya-staging'
set :repository, 'git@github:Raya-Airways/kemuning.git'
#set :branch, 'master'  #should use development in future
set :branch, 'main'
set :rails_env, 'staging'


# Optional settings:
set :user, 'devraya'
set :ssh_options, '-A'
#   set :port, '30000'           # SSH port number.
set :forward_agent, true     # SSH forward_agent.
set :start_port, 3002
