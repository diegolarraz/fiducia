class Enquiry < ApplicationRecord
  belongs_to :user
  belongs_to :contractor, class_name: "User"

  validates :user_id, presence: true
  validates :contractor_id, presence: true
  validates :title, presence: true
  validates :property_address, presence: true
  validates :information, presence: true
  # validates :date_time, presence: true

  def convert_date
    self.date.strftime("#{self.date.day.ordinalize} %B %Y")
  end

  def generate_times
    if self.timeslot == "AM"
      return %w[09:00 10:00 11:00 12:00]
    elsif self.timeslot == "PM"
      return %w[13:00 14:00 15:00 16:00 17::0 18:00 19:00]
    else
      return %w[09:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00 18:00 19:00]
    end
  end

  def confirm
    self.confirmed = true
  end
end
