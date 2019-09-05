class AddColumnToSaveds < ActiveRecord::Migration[6.0]
  def change
    add_column :saveds, :user_id, :integer
  end
end
