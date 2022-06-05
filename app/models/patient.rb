class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :doctors

  validates_uniqueness_of :name
  validates :name, format: /\w+, \w+/

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end
  
end
