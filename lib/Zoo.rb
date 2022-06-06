class Zoo
    attr_accessor :location, :name

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location

        self.class.all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self }
    end

    def animal_species
        animals.collect {|animal| animal.species }.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species }
    end

    def animal_nicknames
        animals.collect{|animal| animal.nickname }
    end

    def self.find_by_location(location)
        all.select{|zoo| zoo.location == location }
    end
end
