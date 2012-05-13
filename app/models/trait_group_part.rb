class TraitGroupPart < ActiveRecord::Base
  belongs_to :part
  belongs_to :trait_group

  no_structure

  validates :part_id, :presence => true
  validates :trait_group_id, :presence => true

  after_create do |trait_group_part|
  	# on adding a new trait group to a part, add all the trait group's traits to the part's traits

  	trait_group_part.trait_group.traits.each do |trait|
  		trait_group_part.part.traits << trait
  	end
  end
end

