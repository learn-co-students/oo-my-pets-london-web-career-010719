require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
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
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
# binding.pry
  def sell_pets
    @pets.each do |type, pets|
      pets.collect do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    pet_count = {}
    @pets.each do |type, pets|
      pet_count[type] = pets.count
    end
    "I have #{pet_count[:fishes]} fish, #{pet_count[:dogs]} dog(s), and #{pet_count[:cats]} cat(s)."
  end
end
