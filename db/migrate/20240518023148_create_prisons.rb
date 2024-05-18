class CreatePrisons < ActiveRecord::Migration[8.0]
  def change
    create_table :prisons do |t|
      t.belongs_to :world, null: false, foreign_key: true

      t.string :name, null: false
      t.string :location
      t.string :security_level, null: false, default: "minimum"

      t.timestamps
    end
  end
end
