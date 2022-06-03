class Patient < ApplicationRecord
  has_many :doctors

  validates_uniqueness_of :name
  validates :name, format: /\w+, \w+/

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end
  
end
