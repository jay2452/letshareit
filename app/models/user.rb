class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :uploads
   belongs_to :branch
   has_many :user_preferences
   has_many :subjects, :through => :user_preferences
   has_many :links

   validates :name, presence: true, length: { minimum: 5 }
   validates :branch_id, presence: true

   def feeds
   		#subject_ids = "SELECT subject_id from user_preferences where user_id = #{self.id}"
   		#uploads = Upload.where("subject_id IN (#{subject_ids})").order(created_at: :desc)
      #links = Link.where("subject_id IN (#{subject_ids})").order(created_at: :desc)
      #uploads.concat(links)
      up = UserPreference.where("user_id = ?", self.id)
      uploads = Upload.where("subject_id IN (?) AND approved = ?", up.map(&:subject_id), true)
      #links = Link.where("subject_id IN (?) AND approved = ?", up.map(&:subject_id), true)
      #uploads.concat(links)
   end
end
