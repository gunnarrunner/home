require 'minitest/autorun'
require 'minitest/pride'
require './lib/building'
require './lib/apartment'
require './lib/renter'

class BuildingTest < Minitest::Test
  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_has_units
    building = Building.new
    assert_equal [], building.units
  end

  def test_add_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_units(unit1)
    building.add_units(unit2)
    assert_equal unit1, building.units[0]
    assert_equal unit2, building.units[1]
    assert_equal [unit1, unit2], building.units
  end

  def test_it_has_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    assert_equal [],  building.renters
  end

  def test_add_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    building.add_renters(renter1)
    building.add_renters(renter2)
    assert_equal renter1, building.renters[0]
    assert_equal renter2, building.renters[1]
    assert_equal [renter1, renter2], building.renters
  end

  def test_average_rent
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    assert_equal 1099.5, building.average_rent
  end

end
