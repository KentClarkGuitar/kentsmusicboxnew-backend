class Song < ApplicationRecord
    has_many :orders_songs
    has_and_belongs_to_many :orders, through: :orders_songs
    has_many :comments
end
