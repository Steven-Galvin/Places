require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end


  describe('#name_of_places') do
    it("returns the name of inputted place") do
      test_place = Place.new("Alaska")
      expect(test_place.name_of_places()).to(eq("Alaska"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a new place to the class list of places.") do
      test_place = Place.new("Alaska")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("Texas").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
