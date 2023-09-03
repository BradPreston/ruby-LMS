class AddRelations < ActiveRecord::Migration[7.0]
  def change
    change_table :loans do |t|
      t.belongs_to :borrower, null: true, foreign_key: true
      t.belongs_to :book, null: true, foreign_key: true
    end
  end
end
