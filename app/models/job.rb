class Job < ApplicationRecord
  belongs_to :enquiry
  validates :enquiry_id, presence: true
end
