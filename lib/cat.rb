class Cat
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  attr_accessor :mood
  attr_reader :name


end
