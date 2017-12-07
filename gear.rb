require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :wheel

  # specifying defaults using ||

  def initialize(args)
    @chainring  = args.fetch(:chainring, 40)
    @cog        = args[:cog] || 18
    @wheel       = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * wheel.diameter
  end
end

def wheel
  @wheel ||= Wheel.new(rim, tire)
end



#   puts Gear.new(52, 11).ratio
#   puts Gear.new(30, 27).ratio

# puts "Wheel: #{@wheel.circumference}"
# puts Gear.new(52,11,@wheel).gear_inches
# puts Gear.new(52,11).ratio