class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:name]

        has_one_attached :image
        has_many :books, dependent: :destroy

        validates :name, length: { minimum: 2, message: "is too short (minimum is 2 characters)" }
        
end
