class Enquiry < ApplicationRecord
  belongs_to :client, class_name: "User"
  belongs_to :contractor, class_name: "User"

  validates :user_id, presence: true,
            :contractor_id, presence: true,
            :title, presence: true,
            :property_address, presence: true,
            :information, presence: true,
            :date_time, presence: true
end
