class CreateTeacherClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_classrooms do |t|
      t.references :teacher, foreign_key: true, null: false
      t.references :classroom, foreign_key: true, null: false

      t.timestamps
    end
  end
end
