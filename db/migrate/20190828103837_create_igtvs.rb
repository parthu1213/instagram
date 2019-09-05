class CreateIgtvs < ActiveRecord::Migration[6.0]
  def change
    create_table :igtvs do |t|

      t.timestamps
    end
  end
end
