require "pry"

class Owner

@@all = []
@@count = 0

attr_reader :species
attr_accessor :count, :name, :pets

  def initialize(species)
    @species = species
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @@all << self
    #@@count = @@all.count
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    #binding.pry
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@count = @@all.count
    @@count
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet, pet_value|
      pet_value.each { |animal|
        animal.mood = "nervous"
      }
      @pets[pet] = []
    end
    #@pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

  end


  def self.all
    @@all
  end
end
