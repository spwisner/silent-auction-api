class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :organization, :start_date, :end_date,
             :active, :total_items, :editable

  def editable
    scope == object.user
  end
end
