set :application_name, 'kemuning_raya'
set :domain, ""
set :deploy_to, '/var/www/'
set :repository, ''
set :branch, 'main'
set :rails_env, 'production'
set :bundle_bin, "~/.rbenv/shims/bundler"

# Optional settings:
set :user, ''
set :ssh_options, '-A'
#   set :port, '30000'           # SSH port number.
set :forward_agent, true     # SSH forward_agent.
set :start_port, 3002
