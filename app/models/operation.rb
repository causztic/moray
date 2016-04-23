class Operation < ActiveRecord::Base
  has_many :catches
  validates :user_name, :user_license, :vessel_name, presence: true
  validates :user_email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  accepts_nested_attributes_for :catches
end
