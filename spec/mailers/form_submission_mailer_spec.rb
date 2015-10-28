require 'rails_helper'

RSpec.describe FormSubmissionMailer, type: :mailer do
  let(:to_address) { 'abc@careerseekers.org.au' }
  let(:from_address) { 'xyz@careerseekers.org.au' }

  describe '#student_submission_notification' do
    let(:mail) { FormSubmissionMailer.student_submission_notification(to_address, from_address) }

    it 'sets the to address' do
      expect(mail.to).to eql([to_address])
    end

    it 'sets the from address' do
      expect(mail.from).to eql([from_address])
    end

    it 'sets the subject' do
      expect(mail.subject).to eql('New student form submission from careerseekers.org.au')
    end
  end

  describe '#professional_submission_notification' do
    let(:mail) { FormSubmissionMailer.professional_submission_notification(to_address, from_address) }

    it 'sets the to address' do
      expect(mail.to).to eql([to_address])
    end

    it 'sets the from address' do
      expect(mail.from).to eql([from_address])
    end

    it 'sets the subject' do
      expect(mail.subject).to eql('New professional form submission from careerseekers.org.au')
    end
  end

  describe '#company_submission_notification' do
    let(:mail) { FormSubmissionMailer.company_submission_notification(to_address, from_address) }

    it 'sets the to address' do
      expect(mail.to).to eql([to_address])
    end

    it 'sets the from address' do
      expect(mail.from).to eql([from_address])
    end

    it 'sets the subject' do
      expect(mail.subject).to eql('New company form submission from careerseekers.org.au')
    end
  end
end
