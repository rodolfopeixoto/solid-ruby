class MountainBike < Bicycle
  attr_reader :front_shock, :rear_schock

  def initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock  = args[:rear_schock]
    super(args)
  end

  def spares
    super.merge(rear_shock: rear_shock)
  end
end