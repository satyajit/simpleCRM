desc "Sending periodic emails about tasks due"
task :send_mailing => :environment do
 mailing = User.create!(:firstname=>'xyz')
  #ActionMailer::Base::Notifier.password_reset_instructions(User.first)
end
