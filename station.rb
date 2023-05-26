class Station
  include InstanceCounter
  attr_reader :name, :trains

  @@stations = []
  def initialize(name)
    @name = name
    @trains = []
    @@stations << self
  end

  def to_s
    @name
  end

  def add_train(train)
    trains << train
  end

  def trains_type(type)
    trains.select { |train| train.type == type }
  end

  def send_train(train)
    trains.delete(train)
  end

  def self.all
    @@stations
  end
end
