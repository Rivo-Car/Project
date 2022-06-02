class Doctor < ApplicationRecord
  belongs_to :category
  has_many :patients

  validates_uniqueness_of :title
  validates_length_of :title, :within => 1..40

end
