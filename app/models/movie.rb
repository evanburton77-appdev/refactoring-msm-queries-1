# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    the_director = Director.where({ :id => self.director_id })[0]
    return the_director
  end

  def characters
    the_characters = Character.where({ :movie_id => self.id })
    return the_characters
  end
end
