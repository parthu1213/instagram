class CreateTaggeds < ActiveRecord::Migration[6.0]
  def change
    create_table :taggeds do |t|

      t.timestamps
    end
  end
end
