class CreateTraitGroupsParts < ActiveRecord::Migration
  def self.up
    create_table :trait_groups_parts do |t|
      t.integer :part_id 
      t.integer :trait_group_id 
    end
    add_index :trait_groups_parts, :part_id
    add_index :trait_groups_parts, :trait_group_id
  end
  
  def self.down
    drop_table :trait_groups_parts
  end
end
