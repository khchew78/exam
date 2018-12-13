class AddColumnToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :email, :string
    add_column :teachers, :password, :string
  end
end
