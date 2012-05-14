class PartTrait < ActiveRecord::Base
	belongs_to :part
	belongs_to :trait

  structure do
  	string_value	"9" #"length" trait == 9 inches
  	timestamps
  end

  validates :part_id, :presence => true
  validates :trait_id, :presence => true
  validates_uniqueness_of :part_id, :scope => :trait_id
end

