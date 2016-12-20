class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres

  def author_name
    if author
      author.full_name
    else
      'No Author Found'
    end
  end

end
