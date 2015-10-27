class ProfessionalsController < ApplicationController
  def register
    professional = params[:professional]
    render json: professional
  end
end
