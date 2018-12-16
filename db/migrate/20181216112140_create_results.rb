class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :examination_id
      t.string :subject_id
      t.string :student_id
      t.string :result

      t.timestamps
    end
  end
end
