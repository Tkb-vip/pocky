class Place < ActiveRecord::Base
 validates :name, presence: true
 has_many :clubs
 has_many :select_places
end

