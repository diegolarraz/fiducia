class AddForeignKeysToEnquiries < ActiveRecord::Migration[6.0]
  def change
  # add_reference :enquiries, :client, foreign_key: true
  add_reference :enquiries, :user, index: true, foreign_key: true
  add_reference :enquiries, :contractor, index: true
  # add_foreign_key :enquiries, :users, column: :contractor
  end
end
