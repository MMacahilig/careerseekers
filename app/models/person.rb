class Person
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :phone, :email, :current_status, :degree, :preferred_placement_industry

  validates :email, presence: true, length: { in: 2..255 }
  validates :degree, length: { maximum: 75 }
end
