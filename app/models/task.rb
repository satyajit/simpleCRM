class Task < ActiveRecord::Base
  enum_attr :status,%w(done pending)
end
