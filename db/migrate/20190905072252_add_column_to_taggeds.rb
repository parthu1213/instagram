class AddColumnToTaggeds < ActiveRecord::Migration[6.0]
  def change
    add_column :taggeds, :user_id, :integer
  end
end
