# config valid only for current version of Capistrano

lock '3.6.0'
server "qburst-desktop", roles: [:app, :web, :db], :primary => true
set :scm, :git
set :application, 'housekeeping'
set :repo_url, 'https://github.com/Dheeraj-Kumar-P/housekeeping.git'
set :local_repository, "/home/qburst/Desktop/Dheeraj/housekeeping"
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name

set :branch, "master"
set :deploy_via, :remote_cache
set :user, 'qburst'
set :use_sudo, true
set :sudo, "sudo -u qburst"
set :stage, "development"
set :rails_env, :development
set :deploy_to, -> { "/home/qburst/Desktop/housekeeping" }
# Default value for :scm is :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, false
# set :format, :pretty

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5