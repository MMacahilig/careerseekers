class CompaniesController < ApplicationController
  def register
    result = false
    company = Company.new(params[:company])
    if(company.valid?)
      FormSubmissionMailer.company_submission_notification(company).deliver_now
      result = true
    end
    render json: { result: result }
  end
end
