class Subject < ApplicationRecord
  DEPARTMENTS = ['全学科', '情報メディア学科', '初等教育学専攻', '幼児教育学専攻']

  belongs_to :teacher
  has_and_belongs_to_many :registrations

  validates :name, presence: true, uniqueness: true

  def is_studying(student)
    result = Study.where(student: student, subject: Subject.find(id)).take
    if result and (result.status == '受講中' or result.status == '受講済み')
      true
    end
  end
end
