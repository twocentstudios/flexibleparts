class CreateTraitGroupTraits < ActiveRecord::Migration
  def self.up
    create_table :trait_group_traits do |t|
      t.integer :trait_id 
      t.integer :trait_group_id 
    end
    add_index :trait_group_traits, :trait_id
    add_index :trait_group_traits, :trait_group_id
  end
  
  def self.down
    drop_table :trait_group_traits
  end
end
