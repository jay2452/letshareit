class Upload < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  has_attached_file :file
  validates_attachment :file
  validates_attachment_content_type :file, content_type: %w(image/jpeg image/jpg application/pdf 
  															application/msword 
  																application/vnd.openxmlformats-officedocument.wordprocessingml.document)

	searchable do
		text :topic
	end

end
