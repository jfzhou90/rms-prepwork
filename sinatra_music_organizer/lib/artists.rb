class Artists
  attr_reader :name, :genre, :albums, :id
  @@artists_list = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    @albums = []
    @id = rand(1..1000000)
    @@artists_list.push(self)
  end

  def self.all
    @@artists_list
  end

  def add_album(album)
    @albums.push(album)
  end

  def self.find_by_id(id)
    @@artists_list.find do |artist|
      artist.id == id
    end
  end

  def self.clear
    @@artists_list = []
  end
end
