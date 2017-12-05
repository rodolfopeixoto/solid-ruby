class RevealingReferences
  # wheels = roda; wheelify = rodar, rim = aro; tire = pneu
  attr_reader :wheels

  def initialize(wheels)
    @wheels = wheelify(data)  
  end

  def diameters
    wheels.collect { |wheels| 
      diameter(wheel)
    }
  end

  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end

  Wheel = Struct.new(:rim, :tire)

  def wheelify(data)
    data.collect { |cell|
      Wheel.new(cell[0], cell[1])
    }
  end
end