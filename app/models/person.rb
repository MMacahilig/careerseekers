class Person
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :phone, :email, :current_status, :degree

  validates :email, presence: true, length: { in: 2..255 }
end
