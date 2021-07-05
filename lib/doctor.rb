class Doctor 
  
  attr_reader :name, :appointment, :patient 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  def new_appointment(patient,date)
    appointment = Appointment.new(date,patient,self)
  end
  
  def patients
    Appointment.all.map do |appointment|
      appointment.patient
    end 
  end

    
end 