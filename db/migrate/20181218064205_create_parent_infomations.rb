class CreateParentInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_infomations do |t|
      t.string :parent_id
      t.string :name
      t.string :age
      t.string :ic_number
      t.string :occupation
      t.string :type_id

      t.timestamps
    end
  end
end
