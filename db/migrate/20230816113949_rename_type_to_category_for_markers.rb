class RenameTypeToCategoryForMarkers < ActiveRecord::Migration[7.0]
  def up
    change_table :markers do |t|
      t.rename :type, :category
    end
  end

  def down
    change_table :markers do |t|
      t.rename :category, :type
    end
  end
end
