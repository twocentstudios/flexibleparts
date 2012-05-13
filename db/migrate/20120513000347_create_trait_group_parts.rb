class CreateTraitGroupParts < ActiveRecord::Migration
  def self.up
    create_table :trait_group_parts do |t|
      t.integer :part_id 
      t.integer :trait_group_id 
    end
    add_index :trait_group_parts, :part_id
    add_index :trait_group_parts, :trait_group_id
  end
  
  def self.down
    drop_table :trait_group_parts
  end
end
