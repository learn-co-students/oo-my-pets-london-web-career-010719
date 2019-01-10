require_relative 'owner.rb'
require_relative 'cat.rb'
require_relative 'fish.rb'


class Dog
  attr_accessor :mood
  attr_reader :name
  # make instance attribute read only

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
# class end
end
