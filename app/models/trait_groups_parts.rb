class TraitGroupsParts < ActiveRecord::Base
  belongs_to :part
  belongs_to :trait_group

  no_structure

  validates :part_id, :presence => true
  validates :trait_group_id, :presence => true
end

