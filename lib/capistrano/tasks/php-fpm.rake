namespace :php_fpm do
  desc "Reloads php-fpm"
  task :reload do
    on roles fetch(:php_fpm_roles) do
      execute fetch(:php_fpm_reload_command)
    end
  end

  before 'deploy:updated', 'php_fpm:reload'
end

namespace :load do
  task :defaults do
    set :php_fpm_reload_command, '/etc/init.d/php-fpm reload'
    set :php_fpm_roles, :all
  end
end
