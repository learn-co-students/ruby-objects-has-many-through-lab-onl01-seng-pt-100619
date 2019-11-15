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
 
def patients
    Patient.all.select {|patient| patient.name == self
      # binding.pry
    }
end
 
 def new_patient(name, appointment)
   Patient.new(name, self, appointment)
 end
 
 def appointments
  Appointment.all.select {|appointment| appointment.doctor == self} 
 end
 
 def new_appointment(date, patient)
   Appointment.new(date, patient, self)
 end
 
 def patients 
   appointments.collect(&:date)
 end
 
end