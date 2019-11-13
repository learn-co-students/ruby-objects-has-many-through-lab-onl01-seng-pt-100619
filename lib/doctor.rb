require 'pry'
class Doctor 
  
  attr_accessor :name, :patient, :appointment 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
 
 def appointments
   Appointment.all.select do |app|
    app.doctor  == self
   end
  end 
   
 
  def new_appointment(patient, date)
    # binding.pry
    name = Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.collect do |appt|
      # binding.pry
      appt.patient
    end
  end  
end