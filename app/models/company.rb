class Company
  include ActiveModel::Model

  attr_accessor :name, :contact_name, :phone, :email

  validates :email, presence: true, length: { in: 2..255 }
end