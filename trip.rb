class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(prepares)
    preparers.each { |preparer
      case preparer
      when Mechanic
        preparer.preparer_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    }
  end
end


class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycles(bicycle) } 
  end

  def prepare_bicycles(bicycle)
  end
end

class TripCoordinator
  def buy_food(customers)
  end
end

class Driver
  def gas_up(vehicle)
  end

  def fill_water_tank(vehicle)
  end
end