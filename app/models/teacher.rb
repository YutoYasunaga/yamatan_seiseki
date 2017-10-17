class Teacher < ApplicationRecord

  DEPARTMENTS = ['管理', '情報メディア学科', '初等教育学専攻', '幼児教育学専攻']
  has_many :subjects
  has_many :registrations

  has_secure_password
  has_attached_file :image,
    styles: { original: '256x256#' },
    default_url: 'defaults/teacher.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :password, length: { minimum: 6 },
    if: lambda { new_record? || !password.blank? }

  def admin?
    department == '管理'
  end
end
