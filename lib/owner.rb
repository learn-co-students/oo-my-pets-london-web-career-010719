require 'pry'


class Owner
  # code goes here
    attr_accessor :pets, :name #:count
    attr_reader :species


    @@all = []

    def initialize(species)
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
      @species = species
    end

    def self.all
      @@all
    end

    def self.count
      @@all.length
    end

    def self.reset_all
      @@all = []
    end

    def say_species
      "I am a #{@species}."
    end

    def buy_fish(name)
      fish1 = Fish.new(name)
      @pets[:fishes] << fish1
    end

    def buy_cat(name)
      cat1 = Cat.new(name)
      @pets[:cats] << cat1
    end

    def buy_dog(name)
      dog1 = Dog.new(name)
      @pets[:dogs] << dog1
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

      @pets.each do |type, pets|
        @pets[type] = []
          pets.each {|pet| pet.mood =  "nervous"}
        # end
        end
    end

    def list_pets
      #@pets.each do |type, pets|
        "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end

end
