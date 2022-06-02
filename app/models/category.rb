class Category < ApplicationRecord
  has_many :doctors
  validates_uniqueness_of :title
  validates_length_of :title, :within => 1..40
end
