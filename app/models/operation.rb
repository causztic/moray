class Operation < ActiveRecord::Base
  has_many :catches
  has_one :environment
  validates :name, :license, :vessel_name, required: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
