class CreateTraitGroups < ActiveRecord::Migration
  def self.up
    create_table :trait_groups do |t|
      t.string :name 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :trait_groups
  end
end
