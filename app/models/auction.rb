# frozen_string_literal: true

class Auction < ApplicationRecord
  belongs_to :user
  validates :organization, :start_date, :end_date, presence: true
end
