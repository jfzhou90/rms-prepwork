require('artists')
require('album')
require('rspec')

describe('Artists') do
  before(:each) do
    Artists.clear
  end

  describe('#all') do
    it('returns empty array on listing all artists') do
      expect(Artists.all).to(eq([]))
    end

    it('returns one artists on listing all artists') do
      Artists.new("John Doe", "Unknown")
      expect(Artists.all.size).to(eq(1))
    end
  end

  describe('#all') do
    it('returns one artists on listing all artists') do
      john = Artists.new("John Doe", "Unknown")
      john.add_album(Album.new("Unknown Destiny", "http:example.com"))
      expect(john.albums.size).to(eq(1))
      expect(john.albums[0].title).to(eq("Unknown Destiny"))
    end
  end

  describe('#find_by_id') do
    it('returns the artist by id') do
      john = Artists.new("John Doe", "Unknown")
      expect(Artists.find_by_id(john.id).name).to(eq("John Doe"))
    end
  end
end
