class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.string :branch_id
      t.string :type_id
      t.string :classroom_id
      

      t.timestamps
    end
  end
end
