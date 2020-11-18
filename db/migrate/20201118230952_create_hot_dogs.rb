class CreateHotDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :hot_dogs do |t|
      t.string :style
      t.string :bun
      t.integer :amount

      t.timestamps
    end
  end
end
