class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :address
      t.string :weight
      t.string :height
      t.string :branch
      t.string :branch_id
      t.string :classroom_id
      t.string :parent_id

      t.timestamps
    end
  end
end
