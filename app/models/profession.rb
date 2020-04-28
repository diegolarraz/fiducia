class Profession < ApplicationRecord
  has_many :users, through: :user_professions

  def self.all_names
    professions = []
    Profession.all.each do |profession|
      professions << profession.name
    end
    professions
  end
end
