# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

# set :user, "nginx-test"
set :user, "nginx-test"

# set :application, "nginx-test"
set :repo_url, "git@github.com:catonmat/nginx-test.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/nginx-test"

# Default value for :format is :airbrussh.
set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
set :ssh_options, verify_host_key: :secure



# ## Version 3.10.1 settings
# # config valid only for current version of Capistrano
# lock "~> 3.10.1"

# App name
# set :application, "nginx-test"

# # Where to fetch source from
# set :repo_url, "git@github.com:catonmat/nginx-test.git"

# # Where app files will be
# set :deploy_to, "/var/www/nginx-test"

# Rbenv specific settings
# set :rbenv_type, :user # or :system, depends on your rbenv setup
# set :rbenv_ruby, File.read('.ruby-version').strip
# set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"

# when using db, you should add config/database.yml here
# set :linked_files, fetch(:linked_files, []).concat(%w{.rbenv-vars})
# set :linked_dirs, fetch(:linked_dirs, []).concat(%w{log tmp/pids tmp/cache tmp/sockets vendor/bundle})
