class CreateTeacherSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_subjects do |t|
      t.string :teacher_id
      t.string :subject_id

      t.timestamps
    end
  end
end
