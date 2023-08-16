class Animal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :markers
end
