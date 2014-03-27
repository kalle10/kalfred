# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Kalfred::Application.load_tasks

task :deploy do
  `RAILS_ENV=production bundle exec rake assets:precompile`
  `git add -A .`
  `git commit -m 'Precompiled assets'`
  `git push`
  `git push heroku master`
end