require 'pry'
class Doctor
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  
  end
  
def self.all 
  @@all
end

def appointments 
  #returns all appointments associated with self
  #   Appointment.all.map do |appointment|
  #   appointment.doctor == self #checking for doctor now
  # end
  
  Appointment.all.select do |appointment|
    appointment.doctor == self
  end
end

def new_appointment(patient, date)
  Appointment.new(patient, date, self)
end
  
end