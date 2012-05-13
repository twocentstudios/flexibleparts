class Trait < ActiveRecord::Base
	has_many :trait_group_traits
	has_many :part_traits
	has_many :trait_groups, :through => :trait_group_traits
	has_many :parts, :through => :part_traits

  structure do
  	name	"length", :validates => [ :presence, :uniqueness => { :case_sensitive => false }]
  	description "the greatest length of the part in inches"
  	timestamps
  end
end

