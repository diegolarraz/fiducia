class Review < ApplicationRecord
  belongs_to :job
  belongs_to :user

  validates :job_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true

end
