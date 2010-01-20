class Mailing < ActiveRecord::Base
  def deliver
    sleep 10
    update_attributes(:delivered_at, Time.now)
  end
end
