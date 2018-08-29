require('album')
require('rspec')

describe('Album') do
  describe('#title') do
    it('returns the title name of the album') do
      album = Album.new("TestTitle", "TestImage")
      expect(album.title).to(eq("TestTitle"))
      expect(album.image_url).to(eq("TestImage"))
    end
  end
end
