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
   		#b = []
   		subject_ids = "SELECT subject_id from user_preferences where user_id = #{self.id}"
   		uploads = Upload.where("subject_id IN (#{subject_ids})").order(created_at: :desc)
      links = Link.where("subject_id IN (#{subject_ids})").order(created_at: :desc)
      uploads.concat(links)
   end

   #  fetch upload of a particular branch
   def branch_feed
<<<<<<< HEAD
    puts self.branch_id
      subject_ids = "SELECT subject_id from subjects where branch_id = #{self.branch_id}"
=======
      subject_ids = "SELECT id from subjects where branch_id = #{self.branch_id}"
>>>>>>> b026e6904a587e0c871a79fc603db2d3ebde05ef
      uploads = Upload.where("subject_id IN (#{subject_ids})").order(created_at: :desc)
      links = Link.where("subject_id IN (#{subject_ids})").order(created_at: :desc)
      uploads.concat(links)
   end
end