class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :name, null: false
      t.string :branch
      t.string :branch_id
      t.references :teacher, foreign_key: true, null: false

      t.timestamps
    end
  end
end
