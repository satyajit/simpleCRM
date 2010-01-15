class Deal < ActiveRecord::Base
  enum_attr :status, %w(planning ^active lost done)
end
