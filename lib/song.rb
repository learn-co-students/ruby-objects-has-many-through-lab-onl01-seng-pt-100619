class Song
  attr_reader :artist, :genre
  attr_accessor :name
  @@all = []
  
  def initialize(name, genre, artist)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  # def genre 
    
  # end
end