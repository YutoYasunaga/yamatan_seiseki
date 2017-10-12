class CreateJoinTableForRegistrationsSubjects < ActiveRecord::Migration[5.0]
  def change
    create_join_table :registrations, :subjects do |t|
      # t.index [:registration_id, :subject_id]
      # t.index [:subject_id, :registration_id]
    end
  end
end
