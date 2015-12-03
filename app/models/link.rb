class Link < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  validates :topic, presence: true, length: {minimum: 5}
  validates :user_id, presence: true
  validates :subject_id, presence: true
end
