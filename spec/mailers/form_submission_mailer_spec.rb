require 'rails_helper'

RSpec.describe FormSubmissionMailer, type: :mailer do
  describe '#student_submission_notification' do
    let(:student) { Student.new(first_name: 'Hiro', email: 'xyz@abc.org') }
    let(:mail) { FormSubmissionMailer.student_submission_notification(student) }

    it 'sets the to address' do
      expect(mail.to).to eql([ENV['DEFAULT_EMAIL']])
    end

    it 'sets the from address' do
      expect(mail.from).to eql([ENV['DEFAULT_EMAIL']])
    end

    it 'sets the subject' do
      expect(mail.subject).to eql('New student form submission from careerseekers.org.au')
    end

    it 'assigns first_name' do
      expect(mail.body.encoded).to match(student.first_name)
    end
  end

  describe '#professional_submission_notification' do
    let(:professional) { Professional.new(first_name: 'Protagonist', email: 'yt@abc.org') }
    let(:mail) { FormSubmissionMailer.professional_submission_notification(professional) }

    it 'sets the to address' do
      expect(mail.to).to eql([ENV['DEFAULT_EMAIL']])
    end

    it 'sets the from address' do
      expect(mail.from).to eql([ENV['DEFAULT_EMAIL']])
    end

    it 'sets the subject' do
      expect(mail.subject).to eql('New professional form submission from careerseekers.org.au')
    end

    it 'assigns first_name' do
      expect(mail.body.encoded).to match(professional.first_name)
    end
  end

  describe '#company_submission_notification' do
    let(:company) { Company.new(name: 'YT', email: 'yt@abc.org') }
    let(:mail) { FormSubmissionMailer.company_submission_notification(company) }

    it 'sets the to address' do
      expect(mail.to).to eql([ENV['DEFAULT_EMAIL']])
    end

    it 'sets the from address' do
      expect(mail.from).to eql([ENV['DEFAULT_EMAIL']])
    end

    it 'sets the subject' do
      expect(mail.subject).to eql('New company form submission from careerseekers.org.au')
    end

    it 'assigns company_name' do
      expect(mail.body.encoded).to match(company.name)
    end
  end
end
