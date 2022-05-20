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
 
  #has_many(:actors)
  has_many(:characters)
  
  #def director
    #key = self.director_id

    #matching_set = Director.where({ :id => key })

    #the_one = matching_set.at(0)

    #return the_one

    #def director
    
      #my_director_id = self.director_id
  
      #matching_directors = Director.where({ :id => my_director_id })
  
      #the_director = matching_directors.at(0)
  
      #return the_director

      belongs_to(:director)
  
    #end
  #end

end
