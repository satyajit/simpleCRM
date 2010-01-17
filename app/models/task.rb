class Task < ActiveRecord::Base
  belongs_to :user
  enum_attr :status,%w(done pending)
end
