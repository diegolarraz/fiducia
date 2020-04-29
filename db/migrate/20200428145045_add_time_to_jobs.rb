class AddTimeToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :time, :time
  end
end
