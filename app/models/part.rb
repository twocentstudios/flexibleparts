class Part < ActiveRecord::Base
	has_many :trait_group_parts
	has_many :trait_groups, :through => :trait_group_parts
	has_many :part_traits
	has_many :traits, :through => :part_traits

  structure do
  	number	"D213-9NE", :validates => [:presence,:uniqueness] 
  	description "9\" High-Leverage Side-Cutting Pliers"
  	timestamps
  end

  # not sure what to reject_if here. new entries have a :trait_id, existing have :id. I'm checking to see if both fields are blank.
	accepts_nested_attributes_for :part_traits, :allow_destroy => :true, :reject_if => lambda { |c| c[:id].blank? and c[:trait_id].blank? }
	accepts_nested_attributes_for :trait_groups, :allow_destroy => :true

  def add_trait_group!(trait_group)
  	trait_groups.create!(trait_group_id: trait_group.id)
  end
end