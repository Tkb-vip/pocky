class User < ApplicationRecord
    validates :username, presence: true,uniqueness:true
    validates :password, presence: true

    belongs_to :club_name,optional:true

    validate :error_check

    def error_check

     if teacher == false
        if admin == true
            errors[:base]<< '管理者として登録できるのは先生のみです'
        end
     end
    end
end
