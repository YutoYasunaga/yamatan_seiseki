class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true
      t.string :status, default: '確認待ち'

      t.timestamps
    end
  end
end
