class StudentsController < ApplicationController
  def register
    result = false
    student = Student.new(params[:student])
    if(student.valid?)
      FormSubmissionMailer.student_submission_notification(student).deliver_now
      result = true
    end
    render json: { result: result }
  end
end
