#set :stages, %w(staging production testing)
#require 'capistrano/ext/multistage' # uncomment & populate 
require 'deprec'
  
set :application, "set your application name here"
set :repository,  "git://github.com/ohammersmith/#{application}.git"
set :deploy_to, "/var/www/#{application}"
set :user, "rails"
set :branch, "master"
set :git_enable_submodules, 1
set :deploy_via, :remote_cache
set :database_yml_in_scm, false
set :domain, "set domain name project will be served on here"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
   
set :ruby_vm_type,      :mri
set :web_server_type,   :apache
set :app_server_type,   :mongrel
set :db_server_type,    :mysql

# set :packages_for_project, %w(libmagick9-dev imagemagick libfreeimage3) # list of packages to be installed
# set :gems_for_project, %w(rmagick mini_magick image_science) # list of gems to be installed

# Update these if you're not running everything on one host.
role :app, domain
role :web, domain
role :db,  domain, :primary => true

# If you aren't deploying to /opt/apps/#{application} on the target
# servers (which is the deprec default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/opt/apps/#{application}"

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    top.deprec.app.restart
  end
end
