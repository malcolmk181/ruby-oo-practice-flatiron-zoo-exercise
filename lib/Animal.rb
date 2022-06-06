class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    @@all = []

    def self.all
        @@all
    end

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname

        self.class.all << self
    end

    def self.find_by_species(species)
        all.select{|animal| animal.species == species }
    end
end
