class User < ActiveRecord::Base
  has_many :contacts
  has_many :tasks
  has_many :deals
  has_many :messages
  acts_as_authentic do |c|
    c.login_field ='email'
  end
  
  validates_length_of :firstname, :maximum=>40
  validates_length_of :lastname, :maximum=>40
  validates_presence_of :firstname, :lastname, :email, :password

  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
end
