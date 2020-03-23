class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clients, foreign_key: :client_id , class_name: "Enquiry"
  has_many :contractors, through: :clients
  has_many :contractors, foreign_key: :contractor_id, class_name: "Enquiry"
  has_many :clients, through: :contractors
end
