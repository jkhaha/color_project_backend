class CreatePalettes < ActiveRecord::Migration[5.2]
  def change
    create_table :palettes do |t|
      t.string :image

      t.timestamps
    end
  end
end
