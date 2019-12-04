require 'pry'

class Appointment

  attr_accessor :patient, :date, :doctor
  @@all = []

  def initialize(patient = "", date = "", doctor = "")
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    self.patient
  end

end
