class Cat
  # code goes here
    attr_accessor :owner, :mood #both can change
    #attr_writer :mood
    attr_reader :name, :species #cannot change
    @@all = []
    
    def initialize(name, owner)
      @name = name
      @species = "cat"
      @owner = owner
      @@all << self
      @mood = "nervous"
    end

    def self.all
      @@all
    end

    

  
end