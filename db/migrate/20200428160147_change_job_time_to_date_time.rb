class ChangeJobTimeToDateTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :time
    add_column :jobs, :time, :datetime
  end
end
