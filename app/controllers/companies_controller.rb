class CompaniesController < ApplicationController
  def register
    company = params[:company]
    render json: company
  end
end
