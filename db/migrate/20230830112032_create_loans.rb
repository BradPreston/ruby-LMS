class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.datetime :date_borrowed
      t.datetime :due_date
      t.datetime :date_returned
      t.string :status

      t.timestamps
    end
  end
end
