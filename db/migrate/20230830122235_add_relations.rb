class AddRelations < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      t.belongs_to :loan, null: true, foreign_key: true
    end

    change_table :borrowers do |t|
      t.references :loan, null: true, foreign_key: true
    end

    change_table :loans do |t|
      t.belongs_to :borrower, null: true, foreign_key: true
      t.references :book, null: true, foreign_key: true
    end
  end
end
