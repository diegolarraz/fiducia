class RemoveTimeslotsFromEnquiriesAddDateAndTimeslotColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :enquiries, :timeslots
    add_column :enquiries, :date, :date
    add_column :enquiries, :timeslot, :text
  end
end
