# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trait_all = TraitGroup.create!(:name => 'global')

trait = Trait.create!(:name => 'width', :description => "The maximum width in inches")
trait_all.traits << trait
trait = Trait.create!(:name => 'height', :description => "The maximum height in inches")
trait_all.traits << trait
trait = Trait.create!(:name => 'depth', :description => "The maximum depth in inches")
trait_all.traits << trait

trait_plier = TraitGroup.create!(:name => 'plier')

trait = Trait.create!(:name => 'handle color', :description => "The color of the handle")
trait_plier.traits << trait
trait = Trait.create!(:name => 'jaw length', :description => "The length of the jaw measured from the fulcrum to the tip in inches")
trait_plier.traits << trait
trait = Trait.create!(:name => 'jaw width', :description => "The maximum width of the jaw in inches")
trait_plier.traits << trait

trait_pump_plier = TraitGroup.create!(:name => 'pump plier')

trait = Trait.create!(:name => 'max jaw capacity', :description => "The maximum jaw capacity")
trait_pump_plier.traits << trait
trait = Trait.create!(:name => 'handle finish', :description => "The type of handle coating")
trait_pump_plier.traits << trait

trait_clampmeter = TraitGroup.create!(:name => 'clampmeter')

trait = Trait.create!(:name => 'voltage', :description => "The maximum voltage measured in volts")
trait_clampmeter.traits << trait
trait = Trait.create!(:name => 'clamp amps', :description => "The maximum amperage measured by the clamp")
trait_clampmeter.traits << trait
trait = Trait.create!(:name => 'high amps', :description => "The maximum amperage measured through the leads")
trait_clampmeter.traits << trait
trait = Trait.create!(:name => 'low amps', :description => "The maximum low amperage measured through the leads")
trait_clampmeter.traits << trait
trait = Trait.create!(:name => 'resistance', :description => "The maximum resistance measured")
trait_clampmeter.traits << trait

trait_multimeter = TraitGroup.create!(:name => 'multimeter')

trait = Trait.find_by_name('voltage')
trait_multimeter.traits << trait
trait = Trait.create!(:name => 'rubber boot', :description => "A removable soft boot that surrounds the plastic shell")
trait_multimeter.traits << trait
trait = Trait.find_by_name('high amps')
trait_multimeter.traits << trait
trait = Trait.find_by_name('low amps')
trait_multimeter.traits << trait
trait = Trait.find_by_name('resistance')
trait_multimeter.traits << trait

trait_insulated = TraitGroup.create!(:name => 'insulated')

trait = Trait.create!(:name => 'insulation voltage rating', :description => "Maximum voltage protection offered by the insulation")
trait_insulated.traits << trait

trait_marketing = TraitGroup.create!(:name => 'marketing')

trait = Trait.create!(:name => 'marketing bullet 1', :description => "marketing copy about the product")
trait_marketing.traits << trait
trait = Trait.create!(:name => 'marketing bullet 2', :description => "marketing copy about the product")
trait_marketing.traits << trait
trait = Trait.create!(:name => 'marketing bullet 3', :description => "marketing copy about the product")
trait_marketing.traits << trait
trait = Trait.create!(:name => 'marketing bullet 4', :description => "marketing copy about the product")
trait_marketing.traits << trait
trait = Trait.create!(:name => 'marketing bullet 5', :description => "marketing copy about the product")
trait_marketing.traits << trait

# -----------

part = Part.create!(:number => 'D213-9NE', :description => "9\" High-Leverage Side-Cutting Pliers")
part.trait_groups << [trait_all, trait_plier]

part = Part.create!(:number => 'CL2000', :description => "600A TRMS AC/DC Clampmeter")
part.trait_groups << [trait_all, trait_clampmeter]

part = Part.create!(:number => 'D503-10', :description => "Pipe-Wrench Pliers - Angled Head")
part.trait_groups << [trait_all, trait_plier, trait_pump_plier]

part = Part.create!(:number => 'D502-6', :description => "Pump Pliers")
part = Part.create!(:number => 'CL200', :description => "600A AC Clampmeter")
part = Part.create!(:number => 'MM1000', :description => "Electrician's/HVAC Multimeter")
part = Part.create!(:number => 'MM2000', :description => "Electrician's/HVAC TRMS Multimeter")

part = Part.create!(:number => 'D213-9NE-INS', :description => "9\" Insulated High-Leverage Side-Cutting Pliers")
part.trait_groups << [trait_all, trait_plier]

part = Part.create!(:number => '45200', :description => "Lockout with Interlocking Tabs")
part.trait_groups << [trait_all]

# -----------

part = Part.find_by_name('CL2000')
trait = Trait.create!(:name => 'special CL2000 only trait', :description => "Show that a part can have unique traits")
part.traits << trait

trait = Trait.create!(:name => 'closed hasp id', :description => "Width of the lockout metal hasp")


