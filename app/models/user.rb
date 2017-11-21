class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rented_apartments, class_name: "Apartment", foreign_key: "tenant_id"
  has_many :owned_apartments, class_name: "Apartment", foreign_key: "landlord_id"

  def apartments
    # DONT FORGET TO MIGRATE WITH A ROLE IN YOUR USER GUYS
    if self.role == "tenant"
      self.rented_apartments
    else
      self.owned_apartments
    end
  end
end
