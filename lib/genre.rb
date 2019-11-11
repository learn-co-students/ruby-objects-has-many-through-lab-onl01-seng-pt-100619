class Genre 
  
  attr_accessor :name, :song, :artists 
  
  @@all = []
  
  def initialiZe(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name,artist)
    Song.new(name,artist,self)
  end 
  
  def songs 
    Songs.all.select {|songs|song.genre == self} 
  end 
  
  def artists 
    songs.collect {|song| song.artist}
  end 
  
end 

