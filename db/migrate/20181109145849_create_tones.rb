class CreateTones < ActiveRecord::Migration[5.2]
  def change
    create_table :tones do |t|
      t.string :hex_value
      t.integer :r
      t.integer :g
      t.integer :b
      t.string :tone_type

      t.timestamps
    end
  end
end
