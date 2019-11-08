class Genre
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all {|song| song.genre == self}
  end
  
  def artists
    songs.map(&:artist)
  end
  
  # def new_song(name, genre)
  #   Song.new(name, self, self.artist)
  # end
  
end
