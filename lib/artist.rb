require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  # def new_song(name, genre)
  #   self = Song.new(name, genre, self)
  # end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
    def new_song(name, genre)
    Song.new(name, self, genre)
    # binding.pry
  end
  
  def genres
    songs.collect(&:genre)
  end
  
end