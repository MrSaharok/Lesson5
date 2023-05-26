class Route
  include InstanceCounter
  attr_reader :stations

  def initialize(station_first, station_last)
    @stations = [station_first, station_last]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_station(station)
    if station != @stations.first || station != @stations.last
      @stations.delete(station)
    end
  end
end
