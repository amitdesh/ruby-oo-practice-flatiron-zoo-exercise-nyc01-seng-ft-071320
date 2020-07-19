class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animal| animal.zoo_name == self}
    end

    def animal_species(species)
        Animal.all.select {|animal| animal.species == species}
    end

    def animal_nicknames(species)
        Animal.all.select {|animal| animal.nickname if animal.species == species}
    end

    def self.find_by_location(location)
        self.all.select {|zoo| zoo.location == location}
    end




end
