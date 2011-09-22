task :production do
  role :web, '173.255.247.213'
  role :app, '173.255.247.213'
  role :db,  '173.255.247.213', :primary => true
  set :web_server, :nginx
  set :web_port, "80"
  set :rails_env, "production"
end

task :staging do
  role :web, '173.255.247.213'
  role :app, '173.255.247.213'
  role :db,  '173.255.247.213', :primary => true
  set :web_server, :nginx
  set :web_port, "80"
end
