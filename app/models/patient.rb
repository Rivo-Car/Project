class Patient < ApplicationRecord
  has_many :doctors

  validates_uniqueness_of :name
  validates :name, format: /\w+, \w+/
end
