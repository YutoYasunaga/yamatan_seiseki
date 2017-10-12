class Registration < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  has_and_belongs_to_many :subjects
end
