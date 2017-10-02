class AddEnterSchoolYearToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :enter_school_year, :integer
  end
end
