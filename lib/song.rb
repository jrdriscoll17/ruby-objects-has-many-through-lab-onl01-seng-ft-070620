class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = Genre.new(genre)
    @artist = Artist.new(artist)
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
