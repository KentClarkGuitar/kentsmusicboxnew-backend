class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :songs, through: :favorites
    has_many :comments, foreign_key: "user_id"
end
