class Profession < ApplicationRecord
  has_many :users, through: :user_professions
end
