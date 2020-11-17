# == Schema Information
#
# Table name: movies
#
#  id              :integer          not null, primary key
#  bookmarks_count :integer
#  description     :text
#  duration        :integer
#  image           :string
#  title           :string
#  year            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  director_id     :integer
#
class Movie < ApplicationRecord
end
