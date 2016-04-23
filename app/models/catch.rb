class Catch < ActiveRecord::Base
  
  belongs_to :operation
  has_many :specimen
  has_one :environment

  accepts_nested_attributes_for :specimen, :environment
end
