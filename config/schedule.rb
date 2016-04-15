# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
set :output, "/Users/phuonghoang/Downloads/cron_log.log"

every 1.minute do
  rake "task_name:sample"
end
# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 1.minute do
#   command "/usr/bin/some_great_command"
  runner "puts 'Phuong'"
  command "echo 'you can use raw cron syntax too'"
#   rake "some:great:rake:task"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
