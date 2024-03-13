class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shipments
  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email"]
  end
end
