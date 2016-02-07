class Message < ActiveRecord::Base
  validates_presence_of :text

  def anonymous?
    !user_name or user_name.empty?
  end

  def display_name
    anonymous? ? 'Анонимен' : user_name
  end
end
