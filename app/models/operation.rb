class Operation < ActiveRecord::Base
  has_many :catches
  has_one :environment
end
