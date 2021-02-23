class Owner
  # code goes here
  #attr_accessor :dog, :cat, :owner
  #attr_writer :owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
      @name = name #INSTANCE VARIABLE
      @species = "human" #INSTANCE VARIABLE
      @@all << self
  end
  
  def self.all #REMEMBER SELF.method = CLASS METHOD
    @@all
  end

  def say_species #INSTANCE METHOD
    "I am a #{self.species}."
  end

  def self.count
    #@@all.count SAME THING
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select {|cat_names| cat_names.owner == self}
  end
  #cat_1 = Cat.new("Garfield", @owner)
  def dogs
    Dog.all.select {|dog_names| dog_names.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end
                              #take the name in the argument and the name of the current owner, use them to make new instances of each pet belonging to self.owner
  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|dogs_owned| dogs_owned.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cats_owned| cats_owned.mood = "happy" }
  end
    
  def sell_pets
    self.dogs.each {|dogs_owned| dogs_owned.mood = "nervous"}
    self.cats.each {|cats_owned| cats_owned.mood = "nervous"}
    self.dogs.each {|dogs_owned| dogs_owned.owner = nil }
    self.cats.each {|cats_owned| cats_owned.owner = nil }
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end