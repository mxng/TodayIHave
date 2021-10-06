class DeleteUpdates < ActiveRecord::Migration[6.0]
  def change
    drop_table :updates
  end
end
