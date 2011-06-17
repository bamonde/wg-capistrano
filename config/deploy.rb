set :application, "Webgoal"
set :repository,  "git://github.com/bamonde/wg-capistrano.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, '/var/www/wg-capistrano'
set :user, 'root'

role :web, "ve.twqcfkwv.vesrv.com"                          # Your HTTP server, Apache/etc
role :app, "ve.twqcfkwv.vesrv.com"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace(:customs) do
task :configdb, :roles => :app do
    run "ln -nfs #{shared_path}/database.yml #{release_path}/config/database.yml"
  end
end

after "deploy:symlink","customs:configdb" #cria link simbólico do database.yml


