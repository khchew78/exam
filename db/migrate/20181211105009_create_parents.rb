class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :student, foreign_key: true, null: false

      t.timestamps
    end
  end
end
