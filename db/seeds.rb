# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




Loan.destroy_all
Book.destroy_all
Borrower.destroy_all

borrower = Borrower.create([
  {
		name: 'Frank Dublin',
		address: '123 Howard Street, Los Angeles, CA 90210',
		phone_number: '1234567890',
		email: 'frank.dublin@email.com'
	}
])

p "Created #{Borrower.count} Borrowers"





books = Book.create([
  {
		title: 'Humble Pi',
		author: 'Matt Parker',
		publisher: 'Riverhead Books',
		isbn: '0593084683',
		publication_year: 2020,
		number_of_pages: 336,
		available_copies: 2
	},
	{
		title: 'Electric Brain',
		author: 'R. Douglas Fields',
		publisher: 'BenBella Books',
		isbn: '1946885452',
		publication_year: 2020,
		number_of_pages: 480,
		available_copies: 1
	},
	{
		title: 'Armada',
		author: 'Ernest Cline',
		publisher: 'Ballantine Books',
		isbn: '0804137277',
		publication_year: 2016,
		number_of_pages: 384,
		available_copies: 2
	}
])

p "Created #{Book.count} Books"

loan = Loan.create([
  {
		date_borrowed: Date.new(2023, 7, 1),
		due_date: Date.new(2023, 7, 10),
		date_returned: nil,
		status: 'borrowed',
		borrower_id: borrower.first.id,
		book_id: books.last.id
	}
])

p "Created #{Loan.count} Loans"