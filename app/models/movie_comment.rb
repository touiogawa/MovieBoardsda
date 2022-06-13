class MovieComment < ApplicationRecord
  belongs_to :movie
  belongs_to :customer
end
