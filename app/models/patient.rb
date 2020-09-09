# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  validates :name, presence: true
  def hello
    puts greeting
  end

  private

  def greeting
    'Hello World'
  end
end
