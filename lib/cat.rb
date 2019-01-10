require_relative './owner.rb'
require_relative './dog.rb'
require_relative './fish.rb'


class Cat
  attr_accessor :mood
  attr_reader :name
  # make instance attribute read only

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end
# class end
end
