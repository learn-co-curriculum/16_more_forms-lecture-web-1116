class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many(:genres, {through: :book_genres})

  def self.has_many(association_name)
    self.define_method("#{association_name}")
    self.define_method("#{association_name}=")
    self.define_method("#{association_name.singularize}_ids=")
    self.define_method("#{association_name.singularize}_ids")
  end
  #
  # def genre_ids=(ids_for_genres)
  #   ids_for_genres.each do |genre_id|
  #     self.genres << Genre.find(genre_id)
  #   end
  # end

  def author_name
    if author
      author.full_name
    else
      'No Author Found'
    end
  end

end
