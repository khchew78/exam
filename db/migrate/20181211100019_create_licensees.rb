class CreateLicensees < ActiveRecord::Migration[5.2]
  def change
    create_table :licensees do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :branch_id

      t.timestamps
    end
  end
end
