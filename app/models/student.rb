class Student < ApplicationRecord
  DEPARTMENTS = ['情報メディア学科', '児童教育学科', '初等教育学専攻']

  has_many :studies
  has_one :registration

  has_secure_password
  has_attached_file :image,
    styles: { original: '256x256#' },
    default_url: 'defaults/student.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true

  def total_credit
    studies.where("score >= ? ", 50).to_a.sum { |study| study.subject.credit }
  end

  def basic_required_credit
    studies.joins(:subject).where("score >= ? and subjects.division = ? and subjects.section = ?", 50, '基礎', '必修').to_a.sum do |study|
      study.subject.credit
    end
  end

  def basic_optional_credit
    studies.joins(:subject).where("score >= ? and subjects.division = ? and subjects.section = ?", 50, '基礎', '選択').to_a.sum do |study|
      study.subject.credit
    end
  end

  def major_required_credit
    studies.joins(:subject).where("score >= ? and subjects.division = ? and subjects.section = ?", 50, '専門', '必修').to_a.sum do |study|
      study.subject.credit
    end
  end

  def major_optional_credit
    studies.joins(:subject).where("score >= ? and subjects.division = ? and subjects.section = ?", 50, '専門', '選択').to_a.sum do |study|
      study.subject.credit
    end
  end
end
