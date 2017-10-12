class Subject < ApplicationRecord
  DEPARTMENTS = ['全学科', '情報メディア学科', '児童教育学科', '初等教育学専攻']

  belongs_to :teacher
  has_and_belongs_to_many :registrations

  validates :name, presence: true, uniqueness: true
end
