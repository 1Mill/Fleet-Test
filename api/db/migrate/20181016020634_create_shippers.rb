class CreateShippers < ActiveRecord::Migration[5.2]
  def change
    create_table :shippers do |t|
      t.string :name

      t.timestamps
    end
  end
end
