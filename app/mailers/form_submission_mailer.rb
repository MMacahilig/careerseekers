class FormSubmissionMailer < ApplicationMailer
  def student_submission_notification(student)
    @student = student
    mail( to: ENV['DEFAULT_EMAIL'],
          from: ENV['DEFAULT_EMAIL'],
          subject: 'New student form submission from careerseekers.org.au',
          template_name: 'student_submission_notification' )
  end

  def professional_submission_notification(professional)
    @professional = professional
    mail( to: ENV['DEFAULT_EMAIL'],
          from: ENV['DEFAULT_EMAIL'],
          subject: 'New professional form submission from careerseekers.org.au',
          template_name: 'professional_submission_notification' )
  end

  def company_submission_notification(company)
    @company = company
    mail( to: ENV['DEFAULT_EMAIL'],
          from: ENV['DEFAULT_EMAIL'],
          subject: 'New company form submission from careerseekers.org.au',
          template_name: 'company_submission_notification' )
  end
end
