# see development for readmes
#

threads_count = ENV.fetch("RAILS_MAX_THREADS") { 2 }
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests; default is 3000.
port        ENV.fetch("PORT") { 3002 }

# Specifies the `environment` that Puma will run in.
environment "staging"

bind  "unix:///var/www/kemuning-raya-staging/shared/tmp/sockets/puma.sock"
pidfile "/var/www/kemuning-raya-staging/shared/tmp/pids/puma.pid"
state_path "/var/www/kemuning-raya-staging/shared/tmp/sockets/puma.state"
directory "/var/www/kemuning-raya-staging/current"

stdout_redirect "/var/www/kemuning-raya-staging/shared/log/puma.stdout.log", "/var/www/kemuning-raya-staging/shared/log/puma.stderr.log", true

workers 0
threads 1,2

daemonize true

activate_control_app 'unix:///var/www/kemuning-raya-staging/shared/tmp/sockets/pumactl.sock'
prune_bundler

plugin :tmp_restart
activate_control_app
