# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  accepts_nested_attributes_for :patient, reject_if: :all_blank

  # def patient_attributes=(patient_attributes)
  #   patient = Patient.create(patient_attributes)
  #   self.patient = patient
  #   self.save
  # end
end
