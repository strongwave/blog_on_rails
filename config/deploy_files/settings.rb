set :application, "blog_on_rails"
default_run_options[:pty] = true
set :branch, "origin/master"
set :scm, :git
set :repository,  "git@github.com:strongwave/#{application}.git"
set :branch, "origin/master"
set :deploy_to, "/home/appuser/#{application}"
set :user, "appuser"
set :uses_ssl, false

set :normal_symlinks, %w(
  public/files
)
set :weird_symlinks, {
  "system"             => "public/system",
  "logs"               => "log"
}
