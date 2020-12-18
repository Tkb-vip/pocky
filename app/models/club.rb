class Club < ApplicationRecord
    validates :activities, presence: true
    belongs_to :club_name
    belongs_to :place
    has_many :comments
    has_many :select_places
end
