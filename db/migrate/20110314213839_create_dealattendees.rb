class CreateDealattendees < ActiveRecord::Migration
  def self.up
    create_table :dealattendees do |t|
      t.integer :deal_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dealattendees
  end
end
