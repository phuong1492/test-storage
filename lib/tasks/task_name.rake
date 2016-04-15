namespace :task_name do
  desc "test rake"
  task :sample => :environment do
    print 'hello'
    echo 'this my command'
  end
end
