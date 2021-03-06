class Category < ApplicationRecord
  has_many :doctors
  validates_uniqueness_of :title
  validates_length_of :title, :within => 1..40

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
