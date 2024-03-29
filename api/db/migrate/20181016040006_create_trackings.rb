class CreateTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :trackings do |t|
      t.datetime :event_date
      t.integer :event_type
      t.references :trackable, polymorphic: true

      t.timestamps
    end
  end
end
