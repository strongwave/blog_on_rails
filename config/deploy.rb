$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

# Load RVM's capistrano plugin.    
require "rvm/capistrano"

set :rvm_ruby_string, '1.9.2@rails3010'
set :rvm_type, :user  # Don't use system-wide RVM

lib_path = File.expand_path(File.join(File.dirname(__FILE__), "deploy_files"))
# basics
load "#{lib_path}/settings.rb"
load "#{lib_path}/helpers.rb"
 
# deployment tasks
load "#{lib_path}/setup.rb"
load "#{lib_path}/gems.rb"
load "#{lib_path}/deploy.rb"
load "#{lib_path}/symlinks.rb"
load "#{lib_path}/process.rb"
load "#{lib_path}/nginx.rb"
load "#{lib_path}/apache.rb"

# load deployment targets
load "#{lib_path}/targets.rb"