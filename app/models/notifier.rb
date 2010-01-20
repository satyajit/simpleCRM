class Notifier < ActionMailer::Base
  default_url_options[:host] = "0.0.0.0:3000"   
  def password_reset_instructions(user)
    subject    "Password Reset Instructions"
    from       "simpleCRM admin"
    recipients user.email
    sent_on    Time.now
    body       :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end

  def send_task_reminders(user)
    subject    "Tasks due tomorrow"
    from       "simpleCRM"
    recipients user.email
    sent_on    Time.now
    body       "Tasks due"  
  end
end
