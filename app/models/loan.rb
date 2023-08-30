class Loan < ApplicationRecord
  belongs_to :borrower
  has_one :book
end
