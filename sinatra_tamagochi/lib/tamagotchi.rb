class Tamagotchi
  @@pet_list = []

  def self.all
    @@pet_list
  end

  def self.find_by_id(id)
    @@pet_list.find do |pet|
      pet.id == id
    end
  end

  attr_accessor :name, :food_level, :sleep_level, :activity_level, :id
  def initialize(name)
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @id = rand(1..1000000)
    @@pet_list.push(self)
  end

  def is_alive
    @food_level != 0 && @sleep_level !=0 && @activity_level != 0
  end

  def set_food_level(input = 0)
    @food_level = input
  end

  def time_passes
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -=1
  end

  def feed
    time_passes()
    @food_level = 10
  end

  def sleep
    time_passes()
    @sleep_level = 10
  end

  def play
    time_passes()
    @activity_level = 10
  end
end
