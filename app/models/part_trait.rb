class PartTrait < ActiveRecord::Base
	belongs_to :part
	belongs_to :trait

  structure do
  	string_value	"9" #"length" trait == 9 inches
  	timestamps
  end
end

