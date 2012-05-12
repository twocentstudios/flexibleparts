class CreateTraitGroupsTraits < ActiveRecord::Migration
  def self.up
    create_table :trait_groups_traits do |t|
      t.integer :trait_id 
      t.integer :trait_group_id 
    end
    add_index :trait_groups_traits, :trait_id
    add_index :trait_groups_traits, :trait_group_id
  end
  
  def self.down
    drop_table :trait_groups_traits
  end
end
