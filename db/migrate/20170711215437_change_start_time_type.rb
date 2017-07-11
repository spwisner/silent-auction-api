class ChangeStartTimeType < ActiveRecord::Migration[5.0]
  def change
      change_column :auctions, :start_date, :datetime
  end
end
