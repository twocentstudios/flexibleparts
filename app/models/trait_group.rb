class TraitGroup < ActiveRecord::Base
	has_many :trait_group_traits
	has_many :trait_group_parts
	has_many :traits, :through => :trait_group_traits
	has_many :parts, :through => :trait_group_parts

  structure do
  	name	"pliers", :validates => [ :presence, :uniqueness => { :case_sensitive => false }]
  	timestamps
  end
end

