class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo_name

    @@all = []

    def initialize(species, weight, nickname, zoo_name)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo_name = zoo_name
        @@all << self
    end

    def self.all
        @@all
    end

    def zoo
        self.zoo_name
    end

    def self.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

end
