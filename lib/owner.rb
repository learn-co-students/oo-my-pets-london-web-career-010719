require_relative 'cat.rb'
require_relative 'dog.rb'
require_relative 'fish.rb'


class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@counter = 0

  # every instance instantiated by the class will have the following attributes, apart from
  # @@all and @@counter which are class methods
  def initialize(name)
    @name = name
    @@all << self
    @@counter += 1
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end


  def self.all
    @@all
  end

  def self.count
    @@counter
  end

  def self.reset_all
    @@counter = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
# class end
end
