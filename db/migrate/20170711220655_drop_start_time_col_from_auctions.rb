class DropStartTimeColFromAuctions < ActiveRecord::Migration[5.0]
  def change
    remove_column :auctions, :start_time
  end
end
