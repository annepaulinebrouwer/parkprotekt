class AddVideoUrlToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :video_url, :string
  end
end
