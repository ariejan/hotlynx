# RVM bootstrap
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.3-p392'
set :rvm_type, :system

# bundler bootstrap
require 'bundler/capistrano'

# main details
set :application, "hotlynx"
set :user, "passenger"
set :use_sudo, false
set :normalize_asset_timestamps, false
role :web, "198.211.124.185"
role :app, "198.211.124.185"
role :db,  "198.211.124.185", :primary => true

# server details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache

# repo details
set :scm, :git
set :scm_username, "passenger"
set :repository, "git@github.com:jarkelen/hotlynx.git"
set :branch, "master"
set :git_enable_submodules, 1

#after "deploy", "run_migrations"
after "deploy", "deploy:cleanup"

# tasks
namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
