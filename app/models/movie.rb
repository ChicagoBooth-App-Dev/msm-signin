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

  belongs_to(:director, { :required => false, :class_name => "Director", :foreign_key => "director_id", :counter_cache => true })

  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "movie_id", :dependent => :destroy })
  
  has_many(:actors, { :through => :characters, :source => :actor })

  

end
