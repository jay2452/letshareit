class Upload < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  has_attached_file :file

  validates :topic, presence: true, length: {minimum: 5}
  validates :user_id, presence: true
  validates :subject_id, presence: true
  validates_attachment :file, presence: true
  # validates_attachment_content_type :file, content_type: %w(image/jpeg image/jpg image/png image/gif application/pdf
 # 															application/msword
  #                              application/mspowerpoint
  #                              application/vnd.ms-powerpoint
  #                              application/vnd.openxmlformats-officedocument.wordprocessingml.document
  #                              application/vnd.openxmlformats-officedocument.presentationml.presentation
  #                              application/msexcel
  #                              application/vnd.ms-excel
  #                              application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
  #                              text/plain application/zip application/x-zip application/rar)

  validates_attachment_content_type :file, not: %w(exe)

	# searchable do
	# 	text :topic, boost: 2
 #    text :file_file_name
	# end


end
