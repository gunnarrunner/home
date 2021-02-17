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
    skip
    building = Building.new
    assert_equal [], building.units
  end

  def test_add_units
    skip
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    assert_equal unit1, building.units[0]
    assert_equal unit2, building.units[1]
    assert_equal [unit1, unit2], building.units
  end

  def test_it_has_renters
    skip
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    assert_equal [],  building.renters
  end

  def test_add_renters
    skip
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    unit1.add_renter(renter1), building.renters[0]
    unit2.add_renter(renter2), building.renters[1]
    assert_equal renter1, building.renters[0]
    assert_equal renter2, building.renters[1]
    assert_equal [renter1, renter2], building.renters
  end

  def test_average_rent
    skip
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    assert_equal 1099.5, building.average_rent
  end

end
