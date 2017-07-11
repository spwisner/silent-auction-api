class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.string :organization
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.boolean :active
      t.integer :total_items

      t.timestamps
    end
  end
end
