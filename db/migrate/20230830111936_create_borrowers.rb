class CreateBorrowers < ActiveRecord::Migration[7.0]
  def change
    create_table :borrowers do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
