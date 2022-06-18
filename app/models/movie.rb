class Movie < ApplicationRecord
  has_many :movie_tags, dependent: :destroy
  has_many :tags, through: :movie_tags, dependent: :destroy
  has_many :movie_comments, dependent: :destroy

  def self.looks(search, word)
    if search == "perfect_match"
      @movies = Movie.where("title LIKE?","#{word}")
    elsif search == "forward_match"
      @movies = Movie.where("title LIKE?","#{word}%")
    elsif search == "backward_match"
      @movies = Movie.where("title LIKE?","%#{word}")
    elsif search == "partial_match"
      @movies = Movie.where("title LIKE?","%#{word}%")
    else
      @movies = Movie.all
    end
  end
end
