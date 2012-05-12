class TraitGroup < ActiveRecord::Base
	has_many :traits, :through => :trait_groups_parts
	has_many :parts, :through => :trait

  structure do
  	name	"pliers", :validates => [ :presence, :uniqueness => { :case_sensitive => false }]
  	timestamps
  end
end

