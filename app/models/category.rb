class Category < ApplicationRecord
  has_many :doctors
  validates_uniqueness_of :title
  validates_length_of :title, :within => 1..40

  def self.to_id(title)
    mass = title.split
    if mass
      id = 0
      mass.each { |i| id = id*127+i.ord }
    else return -1111111111111
    end
    return id
  end
end
