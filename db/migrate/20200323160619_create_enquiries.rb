class CreateEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :enquiries do |t|
      t.string :title
      t.boolean :urgent
      t.string :property_address
      t.text :information
      t.datetime :date_time
      t.boolean :confirmed

      t.timestamps
    end
  end
end
