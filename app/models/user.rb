class User < ActiveRecord::Base
  
  acts_as_authentic do |c|
    c.login_field ='email'
  end
  
  validates_length_of :firstname, :maximum=>40
  validates_length_of :lastname, :maximum=>40
  validates_presence_of :firstname, :lastname, :email, :password

end
