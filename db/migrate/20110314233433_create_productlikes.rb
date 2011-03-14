class CreateProductlikes < ActiveRecord::Migration
  def self.up
    create_table :productlikes do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :productlikes
  end
end
