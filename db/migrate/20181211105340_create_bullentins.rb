class CreateBullentins < ActiveRecord::Migration[5.2]
  def change
    create_table :bullentins do |t|
      t.string :topis
      t.string :date
      t.string :content

      t.timestamps
    end
  end
end
