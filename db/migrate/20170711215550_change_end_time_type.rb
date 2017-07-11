class ChangeEndTimeType < ActiveRecord::Migration[5.0]
  def change
      change_column :auctions, :end_date, :datetime
  end
end
