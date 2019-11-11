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
  
  def new_song(name,genre)
    Song.new(song,self,genre)
  end 
  
  def songs
    Song.all.select {|song| song.artist} 
  end 
  
  def genres
     songs.collect  {|song| song.genre}
  end 
  
end 