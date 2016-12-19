class Message < ActiveRecord::Base
  validates :text, presence: true, length: {minimum: 10, maximum: 120}

  def anonymous?
    !user_name or user_name.empty?
  end

  def display_name
    anonymous? ? 'Анонимен' : user_name
  end
end
