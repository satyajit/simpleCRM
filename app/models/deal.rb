class Deal < ActiveRecord::Base
  belongs_to :user
  enum_attr :status, %w(planning ^active lost done)
end
