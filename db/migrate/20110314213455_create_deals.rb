class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :dealname
      t.integer :city_id
      t.string :description
      t.string :summary
      t.datetime :starttime
      t.datetime :endtime
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
