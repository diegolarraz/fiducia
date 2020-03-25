class Enquiry < ApplicationRecord
  belongs_to :client, class_name: "User"
  belongs_to :contractor, class_name: "User"

  validates :user_id, presence: true
  validates :contractor_id, presence: true
  validates :title, presence: true
  validates :property_address, presence: true
  validates :information, presence: true
  validates :date_time, presence: true
end
