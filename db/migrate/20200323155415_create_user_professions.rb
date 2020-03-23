class CreateUserProfessions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_professions do |t|
      t.references :profession, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
