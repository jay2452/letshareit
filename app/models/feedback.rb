class Feedback < ActiveRecord::Base
  validates :content, presence: true, length: { minimum: 5 }
  validates :user_name, presence: true
  validates :email, presence: true
end
