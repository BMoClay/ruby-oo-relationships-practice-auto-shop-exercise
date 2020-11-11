class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanics
    cars.map{|car| car.mechanic}
  end

  def self.average_number_of_cars
    nc = Car.all.count
    nc / CarOwner.all.count.to_f
  end

end
