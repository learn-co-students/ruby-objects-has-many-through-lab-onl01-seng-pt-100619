class Patient
  attr_reader :doctor, :appointment 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
   @doctor = doctor
   @name = name
   @@all << self
  end
  
  def self.all
   @@all
  end
end