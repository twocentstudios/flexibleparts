class Part < ActiveRecord::Base
	has_many :trait_groups, :through => :trait_groups_parts
	has_many :part_traits
	has_many :traits, :through => :part_traits 

  structure do
  	number	"D213-9NE", :validates => [:presence,:uniqueness] 
  	description "9\" High-Leverage Side-Cutting Pliers"
  	timestamps
  end
end