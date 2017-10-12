class Study < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  def result
    if score.present?
      if score >= 80.0
        return '優'
      elsif score >= 70.0
        return '良'
      elsif score >= 50.0
        return '可'
      else
        return '不可'
      end
    end
  end
end
