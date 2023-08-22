class Marker < ApplicationRecord
  belongs_to :animal

  validates :longitude, :latitude, :category, :title, presence: true

  # enum category: { accident: 0, wildfire: 1, disease: 2, drought: 3 }

  def self.categories
    ["Accident", "Wildfire", "Disease", "Drought", "GPS Tracker"]
  end

end
