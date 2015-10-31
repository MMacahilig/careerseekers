class Company
  include ActiveModel::Model

  attr_accessor :name, :contact_name, :phone, :email

  validates :name, length: { maximum: 255 }
  validates :contact_name, length: { maximum: 255 }
  validates :phone, length: { maximum: 255 }
  validates :email, presence: true, length: { in: 2..255 }
end
