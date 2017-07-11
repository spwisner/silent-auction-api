class DropEndDateColFromAuctions < ActiveRecord::Migration[5.0]
  def change
    remove_column :auctions, :end_time
  end
end
