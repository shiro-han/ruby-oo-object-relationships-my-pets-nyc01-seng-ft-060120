class Cat
  attr_reader :name, :owner
  attr_accessor :mood
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  def owner=(newOwner)
    @owner = newOwner
  end
  def self.all
    @@all
  end
end