class CreateParts < ActiveRecord::Migration
  def self.up
    create_table :parts do |t|
      t.string :number 
      t.string :description 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :parts
  end
end
