class Specialty < ApplicationRecord
  has_many :matching_specialty_doctors
  has_many :doctors, through: :matching_specialty_doctors
end
