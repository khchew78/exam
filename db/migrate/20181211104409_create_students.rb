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
      t.string :brach_id
      t.string :english
      t.string :malay
      t.string :chinese
      t.string :math
      t.string :conduct
      t.string :comment
      t.references :classroom, foreign_key: true, null: false

      t.timestamps
    end
  end
end
