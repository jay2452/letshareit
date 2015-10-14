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

   def feeds
   		#b = []
   		subject_ids = "SELECT subject_id from user_preferences where user_id = #{self.id}"
   		Upload.where("subject_id IN (#{subject_ids})")
   end
end