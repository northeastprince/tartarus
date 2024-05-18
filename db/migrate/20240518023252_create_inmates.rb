class CreateInmates < ActiveRecord::Migration[8.0]
  def change
    create_table :inmates do |t|
      t.references :prison, null: false, foreign_key: true

      t.string :name, null: false
      t.text :notes

      t.timestamps
    end
  end
end
