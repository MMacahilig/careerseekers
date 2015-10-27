class StudentsController < ApplicationController
  def register
    student = params[:student]
    render json: student
  end
end
