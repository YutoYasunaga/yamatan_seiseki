class Teacher < ApplicationRecord

  DEPARTMENTS = ['管理', '情報メディア学科', '児童教育学科', '初等教育学専攻']
  has_many :subjects

  has_secure_password
  has_attached_file :image,
    styles: { original: '256x256#' },
    default_url: 'defaults/teacher.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true

  def admin?
    department == '管理'
  end
end
