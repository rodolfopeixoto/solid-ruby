class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (@rim + (@tire * 2))
  end

  def ratio
    @chainring / @cog.to_f
  end

#   puts Gear.new(52, 11).ratio
#   puts Gear.new(30, 27).ratio
  puts Gear.new(52,11,26,1.5).gear_inches
  puts Gear.new(52,11,24, 1.25).gear_inches
end