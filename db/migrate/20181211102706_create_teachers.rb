class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.string :age, null: false
      t.string :qualification, null: false
      t.string :salary, null: false
      t.string :branch
      t.string :branch_id

      t.timestamps
    end
  end
end
