set :application_name, 'kemuning-raya-staging'
set :domain, Rails.application.credentials.server[:domain]
set :port, '8586'
set :deploy_to, '/var/www/kemuning-raya-staging'
set :repository, 'git@bitbucket.org:maxcobmara/kemuning.git'
#set :branch, 'master'  #should use development in future
set :branch, ENV['BRANCH'] || 'main'
set :rails_env, 'staging'


# Optional settings:
set :user, Rails.application.credentials.server[:user]
set :ssh_options, '-A'
#   set :port, '30000'           # SSH port number.
set :forward_agent, true     # SSH forward_agent.
set :start_port, 3002
