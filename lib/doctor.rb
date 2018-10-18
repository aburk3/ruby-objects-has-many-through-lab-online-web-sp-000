require 'pry'

class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    # binding.pry
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end


end
