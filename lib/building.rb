class Building

  attr_reader :units, :renters
  def initialize
    @units = []
    @renters = []
  end

  def add_units(unit)
    @units << unit
  end

  def add_renters(renter)
    @renters << renter
  end

  def average_rent
    @units.map do |unit|
    (@units[:monthly_rent]).sum/@units.count
    end
  end
end
