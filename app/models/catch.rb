class Catch < ActiveRecord::Base
  has_many :specimen
  has_one :environment

  accepts_nested_attributes_for :specimen, :environment
end
