class CreateMarkers < ActiveRecord::Migration[7.0]
  def change
    create_table :markers do |t|
      t.float :latitude
      t.float :longitude
      t.string :title
      t.text :description
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
