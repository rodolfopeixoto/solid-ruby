require_relative 'gear'
require_relative 'wheel'

gear = Gear.new(chainring: 52 ,cog: 11,wheel: Wheel.new(26,1.5)).gear_inches
puts gear