class Person
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :phone, :email, :current_status, :degree, :preferred_placement_industry

  validates :first_name, length: { maximum: 255 }
  validates :last_name, length: { maximum: 255 }
  validates :phone, length: { maximum: 255 }
  validates :email, presence: true, length: { in: 2..255 }
  validates :current_status, length: { maximum: 255 }
  validates :degree, length: { maximum: 75 }
  validates :preferred_placement_industry, length: { maximum: 255 }
end
