class CreateStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :studies do |t|
      t.references :student, foreign_key: true
      t.references :subject, foreign_key: true
      t.string :status
      t.float :score

      t.timestamps
    end
  end
end
