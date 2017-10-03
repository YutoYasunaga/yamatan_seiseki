class Student < ApplicationRecord
  DEPARTMENTS = ['情報メディア学科', '児童教育学科', '初等教育学専攻']

  has_secure_password
  has_attached_file :image,
    styles: { original: '256x256#' },
    default_url: 'defaults/student.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
end
