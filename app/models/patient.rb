class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def overview
    appointments = self.appointments.count
    "Name: #{self.name} Number of Appointments: #{appointments}"
  end
end
