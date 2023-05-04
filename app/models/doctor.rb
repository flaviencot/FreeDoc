class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :matching_specialty_doctors
  has_many :specialties, through: :matching_specialty_doctors
  belongs_to :city
end
