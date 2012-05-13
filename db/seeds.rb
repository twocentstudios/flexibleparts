# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trait_all = TraitGroup.create!(:name => 'all')

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

part = Part.create!(:number => 'D213-9NE', :description => "9\" High-Leverage Side-Cutting Pliers")
part.trait_groups << [trait_all, trait_plier]

part = Part.create!(:number => 'CL2000', :description => "600A TRMS AC/DC Clampmeter")
part.trait_groups << [trait_all, trait_clampmeter]

trait = Trait.create!(:name => 'special CL2000 only trait', :description => "Show that a part can have unique traits")
part.traits << trait