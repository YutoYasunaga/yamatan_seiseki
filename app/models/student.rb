class Student < ApplicationRecord
  has_secure_password
  has_attached_file :image,
    styles: { original: '256x256#' },
    default_url: 'defaults/student.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
end
