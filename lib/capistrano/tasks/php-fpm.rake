namespace :php_fpm do
  desc "Reloads php-fpm"
  task :reload do
    on roles fetch(:php_fpm_reload_roles) do
      execute fetch(:php_fpm_reload_command)
    end
  end
  desc "Restarts php-fpm"
  task :restart do
    on roles fetch(:php_fpm_restart_roles) do
      execute fetch(:php_fpm_restart_command)
    end
  end
end

namespace :load do
  task :defaults do
    set :php_fpm_reload_roles, :all
    set :php_fpm_reload_command, '/etc/init.d/php-fpm reload'
    set :php_fpm_restart_roles, :all
    set :php_fpm_restart_command, '/etc/init.d/php-fpm reload'
  end
end
