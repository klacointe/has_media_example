# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'
require 'resque/tasks'
require 'resque/tasks/encode_image'
Dir.glob(File.dirname(__FILE__) + '/resque/tasks/*') do |task|
  require task
end

HasMediaExample::Application.load_tasks
