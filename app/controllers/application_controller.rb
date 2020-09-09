# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_doctor
    @doctor ||= Doctor.first
  end
end
