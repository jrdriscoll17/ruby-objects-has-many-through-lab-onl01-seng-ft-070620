class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    Songs.all.filter{|song| song.genre == self}
  end

  def artists
    songs.collect{|song| song.artist}
  end
end
