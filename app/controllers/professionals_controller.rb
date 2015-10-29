class ProfessionalsController < ApplicationController
  def register
    result = false
    professional = Professional.new(params[:professional])
    if(professional.valid?)
      FormSubmissionMailer.professional_submission_notification(professional).deliver_now
      result = true
    end
    render json: { result: result }
  end
end
