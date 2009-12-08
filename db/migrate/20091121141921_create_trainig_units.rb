class CreateTrainingUnits < ActiveRecord::Migration
  def self.up
    create_table :training_units do |t|
      t.integer :id
      t.time :begin
      t.integer :duration_h
      t.integer :duration_m
      t.decimal :distance
      t.decimal :tempo
      t.text :route

      t.timestamps
    end
  end

  def self.down
    drop_table :training_units
  end
end
