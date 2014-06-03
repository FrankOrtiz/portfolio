# Create an instance with a name, type, str, agl, mys values, whether or not its 2handed, and the value of the item
class Weapon # Create a weapon with statlines values that can be used
	attr_reader :wep_name, :wep_type, :wep_str, :wep_agl, :wep_mys, :two_handed, :wep_value, :wep_rarity
	def initialize(name, type, str, agl, mys, two_handed, value, rarity)
		@wep_name = name
		@wep_type = type
		@wep_str = str
		@wep_agl = agl
		@wep_mys = mys
		@two_handed = two_handed
		@wep_value = value
		@wep_rarity = rarity
		# Image
	end
	def self.list_stats(weapon)
		puts "Name: #{weapon.wep_name}"
		case weapon.two_handed
		when true
			print "Two-handed: "
		when false
			print "One-handed: "
		end
		puts "#{weapon.wep_type}"
		puts "Strength: #{weapon.wep_str}"
		puts "Agility: #{weapon.wep_agl}"
		puts "Mysticism: #{weapon.wep_mys}"
		puts "Worth: #{weapon.wep_value}g"
		puts "Rarity: #{weapon.wep_rarity}"
	end
end



module Armory
# Swords
	# One-Handed
SHORT_SWORD = Weapon.new("Short Sword", :Sword, 0, 1, 0, false, 2, :trash)
GLADIUS = Weapon.new("Gladius", :Sword, 1, 0, 0, false, 2, :trash)
CERIMONIAL_DAGGER = Weapon.new("Cerimonial Dagger", :Sword, 0, 0, 1, false, 2, :trash)
	# Two-Handed
GREAT_SWORD = Weapon.new("Great Sword", :Sword, 4, 1, 0, true, 10, :common)
CLAYMORE = Weapon.new("Claymore", :Sword, 3, 2, 0, true, 10, :common)
# Shields
BUCKLER = Weapon.new("Buckler", :Shield, 1, 1, 1, false, 2, :trash)
IRON_BUCKLER = Weapon.new("Iron Buckler", :Shield, 3, 1, 1, false, 10, :common)
HIDE_BUCKLER = Weapon.new("Hide Buckler", :Shield, 1, 3, 1, false, 10, :common)
FEATHERED_BUCKLER = Weapon.new("Feathered Buckler", :Shield, 1, 1, 3, false, 10, :common)
# Axes
	#One-Handed
HAND_AXE = Weapon.new("Hand Axe", :Axe, 1, 0, 0, false, 2, :trash)
HATCHET = Weapon.new("Chipped Axe", :Axe, 0, 1, 0, false, 2, :trash)
TRIBAL_AXE = Weapon.new("Tribal Axe", :Axe, 0, 0, 1, false, 2, :trash)
	#Two-Handed
BATTLE_AXE = Weapon.new("Battle Axe", :Axe, 5, 0, 0, true, 10, :common)
# Mace
MORNING_STAR = Weapon.new("Morning Star", :Mace, 4, 2, 2, false, 35, :uncommon)
# Warhammer
SPINE_CRAKER = Weapon.new("Spine Craker", :Warhammer, 7, 2, 1, true, 50, :uncommon)
# Spears

# Sickles
end
