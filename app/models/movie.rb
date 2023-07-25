class Movie < ActiveRecord::Base
  def self.find_all_movies_by_year(year)
        Movie.where(year: year)
  end
     # Method to create a new movie with a given title
  def self.create_with_title(title)
    Movie.create(title: title)
  end

  # Method to find the first movie in the table
  def self.first_movie
    Movie.first
  end

  # Method to find the last movie in the table
  def self.last_movie
    Movie.last
  end

  # Method to count the total number of movies
  def self.movie_count
    Movie.count
  end

  # Method to find a movie by its ID
  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  # Method to find movies with specific attributes (title and release_date)
  def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end

  # Method to find movies released after 2002
  def self.find_movies_after_2002
    Movie.where('release_date > ?', 2002)
  end

  # Method to update a movie's attributes
  def update_with_attributes(attributes)
    update(attributes)
  end

  # Method to update the title of all movies
  def self.update_all_titles(new_title)
    Movie.update_all(title: new_title)
  end

  # Method to delete a movie by its ID
  def self.delete_by_id(id)
    Movie.find(id).destroy
  end

  # Method to delete all movies
  def self.delete_all_movies
    Movie.destroy_all
  end
end