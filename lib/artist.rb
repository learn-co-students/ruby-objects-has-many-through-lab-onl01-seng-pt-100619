class Artist 

  @@all = []
  attr_accessor :name, :artist, :genre  

  def initialize(name)
   @name = name 
   @@all << self 
  end

  def self.all
   @@all
  end 

  def new_song(name,genre)
    song = Song.new(name,self,genre)
    song.artist = self 
    song 
  end

  def songs
    Song.all.select do |song| 
      song.artist == self
    end 
  end

  def genres 
    self.songs.collect {|song| song.genre}
  end


end 