class Review < ApplicationRecord
  belongs_to :job
  belongs_to :user

  validates :job_id, presence: true,
            :user_id, presence: true,
            :rating, presence: true

end
