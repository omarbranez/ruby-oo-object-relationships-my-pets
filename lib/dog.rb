class Dog
  # code goes here
    attr_accessor :mood, :owner
    #attr_writer :owner
    attr_reader :name, :species
    @@all = []
    
    def initialize(name, owner)
      @name = name
      @species = "dog"
      @owner = owner
      @@all << self
      @mood = "nervous"
    end

    def self.all
      @@all
    end
end