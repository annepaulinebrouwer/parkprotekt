class AddTypeToMarkers < ActiveRecord::Migration[7.0]
  def change
    add_column :markers, :type, :string
  end
end
