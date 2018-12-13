class CreateLicensees < ActiveRecord::Migration[5.2]
  def change
    create_table :licensees do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.references :branch, foreign_key: true, null: false

      t.timestamps
    end
  end
end
