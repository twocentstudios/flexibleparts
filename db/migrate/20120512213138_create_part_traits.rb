class CreatePartTraits < ActiveRecord::Migration
  def self.up
    create_table :part_traits do |t|
      t.integer :part_id 
      t.integer :trait_id 
      t.string :string_value 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
    add_index :part_traits, :part_id
    add_index :part_traits, :trait_id
  end
  
  def self.down
    drop_table :part_traits
  end
end
