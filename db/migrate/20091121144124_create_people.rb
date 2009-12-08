class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.integer :id
      t.text :name
      t.text :firstname
      t.date :day_of_birth
      t.decimal :height
      t.text :alias

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
