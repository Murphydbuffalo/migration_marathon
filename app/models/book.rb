class Book < ActiveRecord::Base
  has_many :categorizations
  has_many :checkouts
  has_many :categories, through: :categorizations

  # Validations will check your Model objects BEFORE they are sent to the db
  # Otherwise your null: false contraint will not throw an error until it is
  # Sent to the DB.  Server side validations prevent that headache.
  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: {
  	greater_than_or_equal_to: 0,
  	less_than_or_equal_to: 100
  }, allow_nil: true
end