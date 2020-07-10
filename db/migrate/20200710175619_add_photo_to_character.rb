class AddPhotoToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :photo, :string
  end
end
