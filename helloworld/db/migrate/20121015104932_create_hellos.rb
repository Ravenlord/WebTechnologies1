class CreateHellos < ActiveRecord::Migration
  def change
    create_table :hellos do |t|
      t.string :from
      t.text :message
      t.string :color

      t.timestamps
    end
  end
end
