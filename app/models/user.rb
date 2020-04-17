class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :enquiries
  has_many :contractor_enquiries, foreign_key: :contractor_id, class_name: "Enquiry"
  has_many :contractors, foreign_key: :contractor_id, class_name: "Enquiry"
  has_many :users, foreign_key: :user_id, class_name: "Enquiry"
  has_many :users, through: :contractors
  has_many :contractors, through: :users
  has_many :user_professions
  has_many :professions, through: :user_professions
  has_many :reviews

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :phone_number, presence: true
  # validates :location, presence: true
  # validates :contractor_name, presence: true, if: :contractor?

  def contractor?
    contractor
  end

  def add_profession(profession_id)
    UserProfession.create(user: self, profession: Profession.find(profession_id))
    self.contractor = true
  end

end
