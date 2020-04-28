class RemoveDatetimeColumnFromEnquiriesAndAddTimeslotsColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :enquiries, :date_time
    add_column :enquiries, :timeslots, :text, array: true, default: []
  end
end
