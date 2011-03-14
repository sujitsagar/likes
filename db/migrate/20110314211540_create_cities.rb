class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.integer :city_id
      t.string :city_name

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
