class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(prepares)
    prepares.each { |prepare| 
      preparer.prepare_trip(self)
    }
  end
end


class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycles(bicycle) } 
  end

  def prepare_bicycles(bicycle)
  end
  

  def prepare_trip(trip)
    trip.bicycles.each { |bicycle|
      prepare_bicycle(bicycle)
    }
  end
end

class TripCoordinator
  
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
  end
end

class Driver

  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle) 
  end

  def gas_up(vehicle)
  end

  def fill_water_tank(vehicle)
  end
end