class Item
  attr_reader :name, :rank
  @@items = []

  def initialize(name, rank)
    @name = name
    @rank = rank
  end

  def self.all
    @@items
  end

  def save
    @@items.each do |item|
      if item.name == self.name
        @@items.delete(item)
      end
      if item.rank == self.rank
        @@items.delete(item)
      end
    end
    @@items.push(self)
  end

  def self.clear
    @@items = []
  end

  def self.sort
    @@items.sort_by!(&:rank)
  end
end
