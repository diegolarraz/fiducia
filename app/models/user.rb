class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clients, foreign_key: :client_id , class_name: "Enquiry"
  has_many :contractors, through: :clients
  has_many :contractors, foreign_key: :contractor_id, class_name: "Enquiry"
  has_many :clients, through: :contractors
  has_many :user_professions
  has_many :professions, through: :user_profession
  has_many :reviews
  has_many :enquiries

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true
  validates :location, presence: true
  validates :contractor_name, presence: true, if: :contractor?

  def contractor?
    contractor
  end

end
