class Wagon
  include NameCompany
  attr_reader :type

  def initialize(wagon_type)
    @type = wagon_type
  end
end
