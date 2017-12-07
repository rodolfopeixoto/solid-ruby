
require_relative 'wheel'

class Wheel
    attr_reader :rim, :tire, :gear

    def initialize(rim, tire, chainring, cog)
      @rim  = rim
      @tire = tire
      @gear = Gear.new(chainring: chainring, cog: cog)
    end

    def diameter
      rim + (tire * 2)
    end

    def circumference
      diameter * Math::PI
    end
    
    def gear_inches
      # tire goes around rim twice for diameter
      gear.gear_inches(diameter)
    end
end