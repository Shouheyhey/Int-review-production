# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

TechReviewSite::Application.load_tasks

require 'heroku_backup_task'
task :cron do
  HerokuBackupTask.execute
end
