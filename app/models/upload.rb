class Upload < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  has_attached_file :file
  validates_attachment :file
  validates_attachment_content_type :file, content_type: %w(file/jpeg file/jpg file/docx file/pptx
  															file/xls file/odt file/txt)
end
