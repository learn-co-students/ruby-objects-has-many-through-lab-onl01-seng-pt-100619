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
    Appointment.all.select {|appointment| appointment.doctor == self}
    #binding.pry
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def patients
    appointments.collect(&:patient)
  end

end





#[1] pry(#<Patient>)> Appointment.all.select {|appointment| appointment.patient == self}
#= self}(#<Patient>)> Appointment.all.select {|appointment| appointment.patient =
#=> [#<Appointment:0x0000000001b85ff0
#  @date=#<Doctor:0x0000000001b86090 @name="The Doctor">,
#  @doctor="Friday, January 32nd",
#  @patient=#<Patient:0x0000000001b86040 @name="Devin Townsend">>]
