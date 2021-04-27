class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
end
