class Message < ActiveRecord::Base
  def anonymous?
    !user_name or user_name.empty?
  end
end
