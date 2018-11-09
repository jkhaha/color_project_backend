class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :tone_id
      t.integer :palette_id

      t.timestamps
    end
  end
end
