class AddColumnToResult < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :branch_id, :string
  end
end
