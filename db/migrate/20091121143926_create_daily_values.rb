class CreateDailyValues < ActiveRecord::Migration
  def self.up
    create_table :daily_values do |t|
      t.integer :id
      t.time :day_time
      t.decimal :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_values
  end
end
