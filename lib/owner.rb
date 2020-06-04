class Owner
  @@all = []
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select{ |cat|
      cat.owner == self
    }
  end

  def dogs
    Dog.all.select{ |doggo|
      doggo.owner == self
    }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map{ |doggo|
      doggo.mood = "happy"
    }
  end

  def feed_cats
    self.cats.map{ |kitteh|
      kitteh.mood = "happy"
    }
  end

  def sell_pets
    self.dogs.map{ |dog|
      dog.owner = nil
      dog.mood = "nervous"
    }

    self.cats.map{ |cat|
      cat.owner = nil
      cat.mood = "nervous"
    }
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end




end