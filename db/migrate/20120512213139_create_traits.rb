class CreateTraits < ActiveRecord::Migration
  def self.up
    create_table :traits do |t|
      t.string :name 
      t.string :description 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :traits
  end
end
