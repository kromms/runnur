class CreateRoutes < ActiveRecord::Migration
  def self.up
    create_table :routes do |t|
      t.integer :id
      t.text :name
      t.text :description
      t.text :gpsies_id

      t.timestamps
    end
  end

  def self.down
    drop_table :routes
  end
end
