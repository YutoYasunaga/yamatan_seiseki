class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :credit
      t.string :division
      t.string :section
      t.string :department
      t.references :teacher, foreign_key: true
      t.string :status, default: '実行中'

      t.timestamps
    end
  end
end
