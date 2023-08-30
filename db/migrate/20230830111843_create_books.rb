class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :isbn
      t.integer :publication_year
      t.integer :number_of_pages
      t.integer :available_copies

      t.timestamps
    end
  end
end
