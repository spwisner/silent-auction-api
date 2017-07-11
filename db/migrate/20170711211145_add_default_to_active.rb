class AddDefaultToActive < ActiveRecord::Migration[5.0]
  def change
    change_column_default :auctions, :active, false
  end
end
