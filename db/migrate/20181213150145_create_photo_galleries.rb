class CreatePhotoGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_galleries do |t|
      t.text :activity
      t.text :description

      t.timestamps
    end
  end
end
