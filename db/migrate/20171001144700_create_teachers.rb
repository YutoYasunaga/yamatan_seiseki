class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :code
      t.string :department
      t.string :status, default: '在職中'
      t.string :password_digest

      t.timestamps
    end
  end
end
