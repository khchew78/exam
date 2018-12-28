class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :examination_id
      t.string :student_id
      t.string :english
      t.string :chinese
      t.string :math
      t.string :malay

      t.timestamps
    end
  end
end
