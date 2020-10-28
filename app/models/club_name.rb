class ClubName < ApplicationRecord
    has_many :clubs
    has_many :users
end
