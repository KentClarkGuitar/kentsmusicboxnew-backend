class Order < ApplicationRecord
    has_many :orders_songs
    has_and_belongs_to_many :songs, through: :orders_songs
end
