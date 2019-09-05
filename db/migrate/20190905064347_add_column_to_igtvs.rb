class AddColumnToIgtvs < ActiveRecord::Migration[6.0]
  def change
    add_column :igtvs, :user_id, :integer
  end
end
