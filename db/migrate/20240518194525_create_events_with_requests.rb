class CreateEventsWithRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.belongs_to :recordable, polymorphic: true, index: false

      t.string :action, null: false
      t.text :details, null: false, default: "{}"

      t.timestamps

      t.index [:recordable_type, :recordable_id, :action]
    end

    create_table :event_requests do |t|
      t.references :event, null: false, foreign_key: true

      t.string :uuid, null: false, index: true
      t.string :ip_address, null: false, index: true
      t.string :user_agent

      t.timestamps
    end
  end
end
