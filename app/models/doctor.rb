class Doctor < ApplicationRecord
  belongs_to :category
  has_many :patients
end
