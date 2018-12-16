class CreateExaminations < ActiveRecord::Migration[5.2]
  def change
    create_table :examinations do |t|
      t.string :branch_id
      t.string :title
      t.string :year

      t.timestamps
    end
  end
end
