class TraitGroupTrait < ActiveRecord::Base
  belongs_to :trait
  belongs_to :trait_group

  no_structure

  validates :trait_id, :presence => true
  validates :trait_group_id, :presence => true
end