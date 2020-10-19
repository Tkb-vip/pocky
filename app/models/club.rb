class Club < ApplicationRecord
    validates :activities, presence: true
    belongs_to :club
    belongs_to :place
    belongs_to :comment
end
