require "bundler/capistrano"

set :user, "renatogh"
set :domain, "174.121.8.3"
set :project, "renato"
set :application, "renato"
set :applicationdir, "/home/#{user}/rails_apps/#{application}"  # The standard Dreamhost setup
set :repository,  "git@github.com:paulsutcliffe/renato.git"
default_run_options[:pty] = true

default_environment['GEM_PATH'] = File.expand_path('~/.gems') + ':' + '/usr/lib/ruby/gems/1.8'

ssh_options[:forward_agent] = true
set :git_enable_submodules, 1
set :scm, :git
set :scm_passphrase, ""
set :branch, "master"
set :deploy_via, :remote_cache
set :git_shallow_clone, 1
set :scm_verbose, true
set :deploy_to, applicationdir

role :web, domain                   # Your HTTP server, Apache/etc
role :app, domain                   # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

set :use_sudo, false

#############################################################
#	Passenger
#############################################################

namespace :passenger do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after :deploy, "passenger:restart"

