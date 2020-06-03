class Job < ApplicationRecord
  belongs_to :enquiry
  validates :enquiry_id, presence: true

  def display_date
    time.to_date.strftime("%d/%m/%Y")
  end

  def display_time
    time.to_time.strftime("%H:%M")
  end

  def mark_as_complete
    self.completed = true
    save
    # raise
  end
end
